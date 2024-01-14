defmodule Exlings.FileWatcher do
  @moduledoc false

  use GenServer

  def start_link(args) do
    GenServer.start_link(__MODULE__, args, name: __MODULE__)
  end

  @impl true
  def init(args) do
    priv = List.to_string(:code.priv_dir(:exlings))
    path = Path.join(priv, "exercises")
    {:ok, watcher} = FileSystem.start_link(dirs: [path], name: :exlings)
    FileSystem.subscribe(:exlings)
    {:ok, %{watcher: watcher, callback: args[:callback]}}
  end

  @impl true
  def handle_info({:file_event, w, {path, e}}, %{watcher: w} = state) do
    case e do
      [_, :modified] -> state.callback.(Path.basename(path))
      _ -> nil
    end

    {:noreply, state}
  end

  def handle_info({:file_event, w, :stop}, %{watcher: w} = state) do
    {:stop, :normal, state}
  end
end
