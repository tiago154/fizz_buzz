defmodule FizzBuzz do
  def build(file_name) do
    file_name
    |> File.read()
    |> handle_file_read()
  end

  defp handle_file_read({:ok, file}) do
    result =
      file
      |> String.split(",")
      |> Enum.map(&convert_to_fizzbuzz/1)

    {:ok, result}
  end

  defp handle_file_read({:error, message}), do: {:error, "Error reading the file: #{message}"}

  defp convert_to_fizzbuzz(element) do
    element
    |> String.to_integer()
    |> evaluate_number()
  end

  defp evaluate_number(number) when rem(number, 3) == 0 and rem(number, 5) == 0, do: :fizzbuzz
  defp evaluate_number(number) when rem(number, 3) == 0, do: :fizz
  defp evaluate_number(number) when rem(number, 5) == 0, do: :buzz
  defp evaluate_number(number), do: number
end
