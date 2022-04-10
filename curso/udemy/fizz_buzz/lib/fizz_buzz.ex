defmodule FizzBuzz do

 # defp build_OLD(file_name) do
 #   case File.read(file_name) do
 #     {:ok, result} -> result
 #     {:error, reason} -> reason
 #   end
 #
 # end

  def build(file_name) do
    file_name
     |> File.read()
     |> handle_file_read()
  end

  defp handle_file_read({:error, reason}), do: {:error, "ERROR reading the file: #{reason}"}

  defp handle_file_read({:ok, result}) do
   lista = result
      |> String.split(",")
      |> Enum.map(&convert_and_evaluate/1)
    {:ok, lista}
  end


  defp convert_and_evaluate(elem) do
    elem
      |> String.to_integer()
      |> evaluate_number()
  end

  defp evaluate_number(number) when rem(number, 3) == 0 and  rem(number, 5) == 0, do: :fizzbuzz
  defp evaluate_number(number) when rem(number, 3) == 0, do: :fizz
  defp evaluate_number(number) when rem(number, 5) == 0, do: :buzz
  defp evaluate_number(number) , do: number

end
