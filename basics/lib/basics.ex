defmodule Basics do
  def add_two_numbers() do
    num1 = IO.gets("Enter a number: ")
    num2 = IO.gets("Enter another number: ")

    result = String.to_integer(num1) + String.to_integer(num2)

    IO.puts("The result is: #{result}")
  end
end
