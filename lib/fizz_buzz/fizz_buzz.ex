defmodule FizzBuzz do

  def fizzbuzz(x) when rem(x,5) == 0 and rem(x,3) == 0, do: "fizzbuzz"
  def fizzbuzz(x) when rem(x,3) == 0, do: "fizz"
  def fizzbuzz(x) when rem(x,5) == 0, do: "buzz"
  def fizzbuzz(x), do: x

  def fizzbuzz2({_n,0,0}), do: "FizzBuzz"
  def fizzbuzz2({_n,0,_}), do: "Fizz"
  def fizzbuzz2({_n,_,0}), do: "Buzz"
  def fizzbuzz2({n,_,_}), do: n

  def sequence(n) do
    Enum.map(1..n, fn(x) -> fizzbuzz(x) end)
  end

  def sequence2(n) do
    1..n
    |> Enum.map( &(fizzbuzz2({&1,rem(&1,3), rem(&1,5)}) ))
  end

end
