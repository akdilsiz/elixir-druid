defmodule DruidTest do
  use ExUnit.Case
  doctest Druid

  test "greets the world" do
    assert Druid.hello() == :world
  end
end
