defmodule Basics do
  def add_two_numbers_piping() do
    num1 = IO.gets("Enter a number: ") |> String.trim |> String.to_integer
    num2 = IO.gets("Enter another number: ") |> String.trim |> String.to_integer

    IO.puts("The sum of the two numbers is #{num1 + num2}")
  end
end
