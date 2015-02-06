defmodule CreatingProjectsTest do
  use ExUnit.Case
  use Hound.Helpers
  hound_session

  test "Creating Projects" do
    navigate_to("http://localhost:4000/")
    new_project_link = find_element(:name, "new project")
    click(new_project_link)
  end
end

