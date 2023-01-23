defmodule EctoAppTest do
  use ExUnit.Case
  doctest EctoApp

  test "greets the world" do
    assert EctoApp.hello() == :world
  end
end
