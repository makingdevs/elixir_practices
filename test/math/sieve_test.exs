defmodule ProyectoDeElixirTest.Math do
  use ExUnit.Case
  doctest ProyectoDeElixir.Math
  import ProyectoDeElixir.Math

  test "the first primes until 12" do
    assert sieve(12) == [2,3,5,7,11]
  end
end
