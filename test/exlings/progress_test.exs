defmodule Exlings.ProgressTest do
  use ExUnit.Case, async: false

  alias Exlings.Progress

  @test_file ".progress_test"

  setup do
    # Clean up before each test
    File.rm(@test_file)
    Application.put_env(:exlings, :progress_file, @test_file)

    on_exit(fn ->
      File.rm(@test_file)
      Application.delete_env(:exlings, :progress_file)
    end)

    :ok
  end

  test "completed returns an empty set when file doesn't exist" do
    assert Progress.completed() == MapSet.new()
  end

  test "complete marks a single exercise" do
    Progress.complete(5)
    assert Progress.completed?(5)
    refute Progress.completed?(4)
  end

  test "complete accumulates multiple exercises without duplicates" do
    Progress.complete(1)
    Progress.complete(3)
    Progress.complete(3)
    assert Progress.completed() == MapSet.new([1, 3])
  end

  test "reset deletes progress file" do
    Progress.complete(10)
    assert Progress.reset() == :ok
    assert Progress.completed() == MapSet.new()
  end

  test "language is nil when never set" do
    assert Progress.language() == nil
  end

  test "set_language stores the language without counting as progress" do
    Progress.set_language("pt-BR")
    assert Progress.language() == "pt-BR"
    assert Progress.completed() == MapSet.new()
  end

  test "reset preserves the language choice" do
    Progress.set_language("pt-BR")
    Progress.complete(1)
    assert Progress.reset() == :ok
    assert Progress.completed() == MapSet.new()
    assert Progress.language() == "pt-BR"
  end
end
