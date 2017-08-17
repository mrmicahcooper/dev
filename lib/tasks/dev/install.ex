defmodule Mix.Tasks.Dev.Install do
  use Mix.Task
  require Logger

  @shortdoc """
    Symlink prefined .dotfiles
  """

  @moduledoc """
    Symlink prefined .dotfiles
  """

  @home System.user_home()
  @dotfiles_path File.cwd!() |> Path.join("dotfiles")

  def run(_args) do
    files = File.ls!(@dotfiles_path)
    for "." <> _ = file <- files, do: sym_link(file)
  end

  defp sym_link(filename) do
    target = Path.join(@dotfiles_path, filename)
    link   = Path.join(@home, filename)
    case File.ln_s(target, link) do
      :ok -> Logger.info("$ ln -s #{target} #{link}")
      {:error, message} -> Logger.info("#{message} - #{link}")
    end
  end
end
