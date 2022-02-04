require "application_system_test_case"

class Project2sTest < ApplicationSystemTestCase
  setup do
    @project2 = project2s(:one)
  end

  test "visiting the index" do
    visit project2s_url
    assert_selector "h1", text: "Project2s"
  end

  test "creating a Project2" do
    visit project2s_url
    click_on "New Project2"

    fill_in "Company", with: @project2.company_id
    fill_in "Name", with: @project2.name
    click_on "Create Project2"

    assert_text "Project2 was successfully created"
    click_on "Back"
  end

  test "updating a Project2" do
    visit project2s_url
    click_on "Edit", match: :first

    fill_in "Company", with: @project2.company_id
    fill_in "Name", with: @project2.name
    click_on "Update Project2"

    assert_text "Project2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Project2" do
    visit project2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Project2 was successfully destroyed"
  end
end
