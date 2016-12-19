defmodule ProyectoDeElixir.User do
  defstruct username: "", realname: "", roles: []

  def fullRidiculousName(%ProyectoDeElixir.User{username: name}) do
    name
  end
end
