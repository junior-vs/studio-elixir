defmodule Recursion do
  def f(n) when n > 0 do
    IO.puts("Hello World: #{n}")
    f(n - 1)
  end

  def f(0) do
    nil
  end
end
