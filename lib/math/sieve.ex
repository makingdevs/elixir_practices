defmodule ProyectoDeElixir.Math do
  import Enum, only: [map: 2]

  def sieve(n) do
    [1,2,3,4,5,6]
    |> map(&(&1*&1))
    |> IO.inspect
    [1,2,3]
  end
end
