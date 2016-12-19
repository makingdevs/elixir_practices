defmodule MyMath do
    def greet(name) do
      "Hello " <> name
    end

    def factorial(n) do
      if n == 1 do
        1
      else
        n * factorial(n-1)
      end
    end

    def another_factorial(n) do
      cond do
        n == 1 -> 1
        true -> n * another_factorial(n-1)
      end
    end

    def facto2(1) do
      1
    end
    def facto2(n) do
      n * facto2(n-1)
    end


    def facto_accum(1, a) do
      a
    end

    def facto_accum(n, a) do
      facto_accum(n-1, n * a)
    end

    def fact_accum_w_guards(n,a) when n == 1 do
      a
    end

    def fact_accum_w_guards(n,a) do
      fact_accum_w_guards(n-1, a*n)
    end

    def give_list(n,list) do
      if n >= 1 do
      give_list(n-1,[n|list])
      else
        list
      end
    end

    def my_list(n) when n >= 1 do
      my_list(n-1) ++ [n]
    end

    def my_list(_) do
      []
    end

    def create_list_until(n) do
      sequence_for n, 1, []
    end

    defp sequence_for(n, i, l) when n == i do
      l ++ [n]
    end

    defp sequence_for(n, i, l) do
      sequence_for(n, i+1, l ++ [i] )
    end

    def sum_list([h|t]) do
      h + sum_list(t)
    end

    def sum_list([]) do
      0
    end

    def sum_until(n) do
      n
      |> create_list_until
      |> sum_list
    end

    def gcd(a,a), do: a
    def gcd(a,b) when a > b, do: gcd(a-b, b)
    def gcd(a,b) when b > a, do: gcd(a, b-a)

end
