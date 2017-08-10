defmodule Mix.Tasks.Dev.Install do
 require Logger
  use Mix.Task

  @home System.user_home()

  def run(_args) do
    Logger.info("sym-linking dotfiles")
    files = File.ls!("dotfiles")
    for "." <> _ = file <- files, do: sym_link(file)
  end

  defp sym_link(filename) do
    target = File.cwd!() |> Path.join("dotfiles") |> Path.join(filename)
    link   = Path.join(@home, filename)
    case File.ln_s(target, link) do
      :ok -> Logger.info("$ ln -s #{target} #{link}")
      {:error, message} -> Logger.info("#{message} - #{link}")
    end
  end
end
