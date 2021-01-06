defmodule LearningElixir.FizzBuzzTest do
  use ExUnit.Case
  import ExUnit.CaptureIO
  doctest LearningElixir.FizzBuzz

  describe "get_by number" do
    test "puts Fizz for number divisible by 3" do
      assert capture_io(fn -> LearningElixir.FizzBuzz.get_by_num(3) end) == "Fizz\n"
    end

    test "puts Buzz for number divisible by 5" do
      assert capture_io(fn -> LearningElixir.FizzBuzz.get_by_num(5) end) == "Buzz\n"
    end

    test "puts FizzBuzz for number divisible by 3 and 5" do
      assert capture_io(fn -> LearningElixir.FizzBuzz.get_by_num(15) end) == "FizzBuzz\n"
    end
  end

  describe("get_all") do
    test "for a range from 1 to n puts Fizz for number divisible by 3,
    Buzz for number divisible by 5
    and FizzBuzz for number divisible by 3 and 5" do
      assert capture_io(fn -> LearningElixir.FizzBuzz.get_all(15) end) ==
               "1\n2\nFizz\n4\nBuzz\nFizz\n7\n8\nFizz\nBuzz\n11\nFizz\n13\n14\nFizzBuzz\n"
    end
  end
end
