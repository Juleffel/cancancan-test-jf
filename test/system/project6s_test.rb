require "application_system_test_case"

class Project6sTest < ApplicationSystemTestCase
  setup do
    @project6 = project6s(:one)
  end

  test "visiting the index" do
    visit project6s_url
    assert_selector "h1", text: "Project6s"
  end

  test "creating a Project6" do
    visit project6s_url
    click_on "New Project6"

    fill_in "Company", with: @project6.company_id
    fill_in "Name", with: @project6.name
    click_on "Create Project6"

    assert_text "Project6 was successfully created"
    click_on "Back"
  end

  test "updating a Project6" do
    visit project6s_url
    click_on "Edit", match: :first

    fill_in "Company", with: @project6.company_id
    fill_in "Name", with: @project6.name
    click_on "Update Project6"

    assert_text "Project6 was successfully updated"
    click_on "Back"
  end

  test "destroying a Project6" do
    visit project6s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Project6 was successfully destroyed"
  end
end
