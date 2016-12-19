defmodule Machine do

  def guess_my_number(number, down, _up) when number == down do
    IO.puts "Your number is #{down}"
  end

  def guess_my_number(number, _down, up) when number == up do
    IO.puts "Your number is #{up}"
  end

  def guess_my_number(number, down, up) do
    guessing = round(Float.floor((up + down) / 2))
    IO.puts "Calculating ... #{guessing}"
    if number > guessing do
       guess_my_number(number, guessing, up)
    else
       guess_my_number(number, down, guessing)
    end
  end


  def qsort([]) do
    []
  end

  def greater_than(n,pivot) do
    n>pivot
  end

  def less_than(i,h) do
    i<=h
  end

  def qsort([h|t]) do
    larger = for i <- t,greater_than(i,h), do: i
    smaller = for i <- t,less_than(i,h), do: i
    qsort(smaller) ++ [h] ++ qsort(larger)
  end

  ##def guess_my_number(number,limit_up, limit_down) when
  ##  number > round Float.floor (limit_up + limit_down) / 2 do
  ##    guess_my_number(number, limit_up, midle)
  ##end

  ##def guess_my_number(number, limit_up, limit_down) when
  ##  number < round Float.floor (limit_up + limit_down) / 2 do
  ##  guess_my_number(number, midle, limit_down)
  ##end

  ##def guess_my_number(number, limit_up, limit_down) when
  ##  number == round Float.floor (limit_up + limit_down) / 2 do
  ##  number
  ##end
  # def guess_my_number(:up, limit_up, limit_down) do
  #   guess_my_number(limit_up,limit_down)
  # end

  # def guess_my_number(:down, limit_up, limit_down) do
  #   guess_my_number(limit_up,limit_down)
  # end

end
