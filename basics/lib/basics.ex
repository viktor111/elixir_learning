defmodule Basics do
  names = ["Heisenberg", "Potter", "Buddy"]

  def add_two_numbers_piping() do
    num1 = IO.gets("Enter a number: ") |> String.trim |> String.to_integer
    num2 = IO.gets("Enter another number: ") |> String.trim |> String.to_integer

    IO.puts("The sum of the two numbers is #{num1 + num2}")
  end

  def for_loop_over_list() do
    names = ["Heisenberg", "Potter", "Buddy"]

    for name <- names do
      IO.puts(name)
    end
  end

  def each_loop_over_list() do
    names = ["Heisenberg", "Potter", "Buddy"]

    Enum.each(names, fn(name) ->
      IO.puts(name)
    end)
  end

  def recursion_loop_list() do
    names = ["Heisenberg", "Potter", "Buddy"]

    recursive_loop(names, 0)
  end

  def recursive_loop(list, index) when index < length(list) do
    IO.puts(Enum.at(list, index))
    recursive_loop(list, index + 1)
  end

  def recursive_loop(list, index) do
    # when index is out of range
  end

end
