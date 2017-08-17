defmodule Mix.Tasks.Dev.Vim do
  use Mix.Task
  require Logger
  import Logger, only: [info: 1]

  @vim_bundle "#{System.user_home()}/.vim/bundle"

  @plugins File.cwd!()
  |> Path.join(".vimbundle")
  |> File.read!()
  |> String.trim()
  |> String.split("\n")

  def run(_args) do
    unless File.exists?(@vim_bundle), do: File.mkdir(@vim_bundle)

    @plugins
    |> Enum.map(&install_or_update/1)
    |> Enum.each(&Task.await/1)
  end

  def install_or_update(plugin) do
    path = plugin_path(plugin)
    url  = plugin_url(plugin)

    Task.async(fn() ->
      if File.exists?(path), do: update(path), else: install(url, path)
    end)
  end

  def install(url, path) do
    result = System.cmd( "git", ["clone", url, path], [stderr_to_stdout: true])
             |> elem(0)

    info("\n #{result}")
  end

  def update(path) do
    result = System.cmd("git", ["pull", "--rebase", "origin", "master"],
             [cd: path,  stderr_to_stdout: true ])
             |> elem(0)

    info("\n #{result}")
  end

  defp plugin_path(plugin), do: "#{@vim_bundle}/#{Path.basename(plugin)}"
  defp plugin_url(plugin), do: "https://github.com/#{plugin}"

end
