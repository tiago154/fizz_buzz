defmodule FizzBuzzTest do
  use ExUnit.Case

  describe "build/1" do
    test "when a valid file is provided, returns the coverted list" do
      expected_result =
        {:ok, [1, 2, :fizz, :buzz, :buzz, :fizzbuzz, :buzz, :buzz, :fizzbuzz, 113]}

      assert FizzBuzz.build("test/mock/numbers.mock") == expected_result
    end

    test "when an invalid file is provided, return an error" do
      expected_result = {:error, "Error reading the file: enoent"}

      assert FizzBuzz.build("invalid") == expected_result
    end
  end
end
