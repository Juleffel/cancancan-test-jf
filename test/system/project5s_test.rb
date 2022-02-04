require "application_system_test_case"

class Project5sTest < ApplicationSystemTestCase
  setup do
    @project5 = project5s(:one)
  end

  test "visiting the index" do
    visit project5s_url
    assert_selector "h1", text: "Project5s"
  end

  test "creating a Project5" do
    visit project5s_url
    click_on "New Project5"

    fill_in "Company", with: @project5.company_id
    fill_in "Name", with: @project5.name
    click_on "Create Project5"

    assert_text "Project5 was successfully created"
    click_on "Back"
  end

  test "updating a Project5" do
    visit project5s_url
    click_on "Edit", match: :first

    fill_in "Company", with: @project5.company_id
    fill_in "Name", with: @project5.name
    click_on "Update Project5"

    assert_text "Project5 was successfully updated"
    click_on "Back"
  end

  test "destroying a Project5" do
    visit project5s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Project5 was successfully destroyed"
  end
end
