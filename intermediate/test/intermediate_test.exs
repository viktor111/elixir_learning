defmodule IntermediateTest do
  use ExUnit.Case
  doctest Intermediate

  test "greets the world" do
    assert Intermediate.hello() == :world
  end
end
