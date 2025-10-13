defmodule Exlings.ExercisesTest do
  use ExUnit.Case

  alias Exlings.Exercises

  test "all/0 returns list of exercises" do
    exercises = Exercises.all()
    assert is_list(exercises)
    assert length(exercises) == 10
  end

  test "get/1 returns exercise by number" do
    exercise = Exercises.get(1)
    assert exercise.number == 1
    assert exercise.name == "Hello World"
    assert exercise.file == "001_hello_world.ex"
  end

  test "get/1 returns nil for invalid number" do
    assert Exercises.get(999) == nil
  end

  test "count/0 returns total number of exercises" do
    assert Exercises.count() == 10
  end

  test "by_topic/1 filters exercises by topic" do
    basics = Exercises.by_topic("basics")
    assert length(basics) >= 1
    assert Enum.all?(basics, &(&1.topic == "basics"))
  end
end
