defmodule LearningElixir.FizzBuzz do
  def get_by_num(x) do
    IO.puts(get_result(x))
  end

  def get_all(n) do
    Enum.each(1..n, fn x ->
      get_by_num(x)
    end)
  end

  defp get_result(x) do
    cond do
      is_divisibie_by_3(x) && is_divisibie_by_5(x) ->
        "FizzBuzz"

      is_divisibie_by_3(x) ->
        "Fizz"

      is_divisibie_by_5(x) ->
        "Buzz"

      true ->
        x
    end
  end

  defp is_divisibie_by_3(n) do
    rem(n, 3) == 0
  end

  defp is_divisibie_by_5(n) do
    rem(n, 5) == 0
  end
end
