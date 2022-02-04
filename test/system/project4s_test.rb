require "application_system_test_case"

class Project4sTest < ApplicationSystemTestCase
  setup do
    @project4 = project4s(:one)
  end

  test "visiting the index" do
    visit project4s_url
    assert_selector "h1", text: "Project4s"
  end

  test "creating a Project4" do
    visit project4s_url
    click_on "New Project4"

    fill_in "Company", with: @project4.company_id
    fill_in "Name", with: @project4.name
    click_on "Create Project4"

    assert_text "Project4 was successfully created"
    click_on "Back"
  end

  test "updating a Project4" do
    visit project4s_url
    click_on "Edit", match: :first

    fill_in "Company", with: @project4.company_id
    fill_in "Name", with: @project4.name
    click_on "Update Project4"

    assert_text "Project4 was successfully updated"
    click_on "Back"
  end

  test "destroying a Project4" do
    visit project4s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Project4 was successfully destroyed"
  end
end
