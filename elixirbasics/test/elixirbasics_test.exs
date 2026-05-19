defmodule ElixirbasicsTest do
  use ExUnit.Case
  doctest Elixirbasics

  test "greets the world" do
    assert Elixirbasics.hello() == :world
  end
end
