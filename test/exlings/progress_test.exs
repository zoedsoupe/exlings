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

  test "read returns 0 when file doesn't exist" do
    assert Progress.read() == 0
  end

  test "write and read progress" do
    Progress.write(5)
    assert Progress.read() == 5
  end

  test "reset deletes progress file" do
    Progress.write(10)
    assert Progress.reset() == :ok
    assert Progress.read() == 0
  end
end
