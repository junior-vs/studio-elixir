defmodule Solution do
  #Enter your code here. Read input from STDIN. Print output to STDOUT
    def f(n) when n > 0 do
      IO.puts("Hello World")
      f(n - 1)
    end

    def f(0) do
      nil
    end

  end
  {count, _} = IO.gets("") |> Integer.parse
  Solution.f(count)
