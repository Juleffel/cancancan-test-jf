require "application_system_test_case"

class Project3sTest < ApplicationSystemTestCase
  setup do
    @project3 = project3s(:one)
  end

  test "visiting the index" do
    visit project3s_url
    assert_selector "h1", text: "Project3s"
  end

  test "creating a Project3" do
    visit project3s_url
    click_on "New Project3"

    fill_in "Company", with: @project3.company_id
    fill_in "Name", with: @project3.name
    click_on "Create Project3"

    assert_text "Project3 was successfully created"
    click_on "Back"
  end

  test "updating a Project3" do
    visit project3s_url
    click_on "Edit", match: :first

    fill_in "Company", with: @project3.company_id
    fill_in "Name", with: @project3.name
    click_on "Update Project3"

    assert_text "Project3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Project3" do
    visit project3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Project3 was successfully destroyed"
  end
end
