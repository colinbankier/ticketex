defmodule CreatingProjectsTest do
  use ExUnit.Case
  use Hound.Helpers
  hound_session

  test "Creating Projects" do
    navigate_to("http://localhost:4000/")

    find_element(:name, "new_project")
    |> click

    find_element(:name, "project_name")
    |> fill_field("TextMate 2")

    find_element(:name, "create_project")
    |> click

    assert String.contains?(page_source, "Project has been created.")
  end
end

