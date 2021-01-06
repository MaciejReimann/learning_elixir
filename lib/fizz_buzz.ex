defmodule LearningElixir.FizzBuzz do
  def get_by_num(n) do
    get_by_range(n - 1, n)
  end

  def get_all(n) do
    get_by_range(1, n)
  end

  defp get_by_range(min, max) do
    Enum.each(min..max, fn x ->
      cond do
        is_divisibie_by_3(x) && is_divisibie_by_5(x) ->
          print_fizz_buzz()

        is_divisibie_by_3(x) ->
          print_fizz()

        is_divisibie_by_5(x) ->
          print_buzz()

        true ->
          IO.puts(x)
      end
    end)
  end

  defp is_divisibie_by_3(n) do
    rem(n, 3) == 0
  end

  defp is_divisibie_by_5(n) do
    rem(n, 5) == 0
  end

  defp print_fizz do
    IO.puts("Fizz")
  end

  defp print_buzz do
    IO.puts("Buzz")
  end

  defp print_fizz_buzz do
    IO.puts("FizzBuzz")
  end
end
