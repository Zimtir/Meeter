defmodule Storage do
  use Application

  def start(_type, _args) do
    Storage.Application.start_link(name: Storage.Application)
  end
end
