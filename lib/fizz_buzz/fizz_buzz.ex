defmodule FizzBuzz do

  def fizzbuzz(x) when rem(x,5) == 0 and rem(x,3) == 0 do
    "fizzbuzz"
  end

  def fizzbuzz(x) when rem(x,3) == 0 do
    "fizz"
  end

  def fizzbuzz(x) when rem(x,5) == 0 do
    "buzz"
  end

  def fizzbuzz (x) do
    x
  end

  def sequence(n) do
    Enum.map(1..n, fn(x) -> fizzbuzz(x) end)
  end

end
