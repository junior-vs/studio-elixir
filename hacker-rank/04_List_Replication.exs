defmodule Solution do
  #Enter your code here. Read input from STDIN. Print output to STDOUT

    def a(n) when n > 0 do
      {msg, _} = IO.gets("")
      f(n, msg)
    end
    def a(0) do

    end

    def f(n, msg) when n > 0 do
      IO.puts(msg)
      f(n - 1)
    end

    def f(0) do

      IO.puts("")
    end
  end

  {n, _} = IO.gets("") |> Integer.parse
  Solution.a(n)
