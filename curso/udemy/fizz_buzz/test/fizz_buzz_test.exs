defmodule FizzBuzzTest do
  use ExUnit.Case

  describe "build/1" do
    test "when a valid file is provided, return converted list" do
      expected_response =
        {:ok, [1, 2, :fizz, 4, :buzz, :fizz, 7, 8, :fizz, :buzz, :fizzbuzz, :buzz, :fizzbuzz]}

      assert FizzBuzz.build("number.txt") == expected_response
    end

    test "when a invalid file iis provided, return error" do
      expected_response = {:error, "ERROR reading the file: enoent"}
      assert FizzBuzz.build("invalid_file.txt") == expected_response
    end
  end
end
