require "application_system_test_case"

class Project1sTest < ApplicationSystemTestCase
  setup do
    @project1 = project1s(:one)
  end

  test "visiting the index" do
    visit project1s_url
    assert_selector "h1", text: "Project1s"
  end

  test "creating a Project1" do
    visit project1s_url
    click_on "New Project1"

    fill_in "Company", with: @project1.company_id
    fill_in "Name", with: @project1.name
    click_on "Create Project1"

    assert_text "Project1 was successfully created"
    click_on "Back"
  end

  test "updating a Project1" do
    visit project1s_url
    click_on "Edit", match: :first

    fill_in "Company", with: @project1.company_id
    fill_in "Name", with: @project1.name
    click_on "Update Project1"

    assert_text "Project1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Project1" do
    visit project1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Project1 was successfully destroyed"
  end
end
