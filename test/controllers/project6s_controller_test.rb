require "test_helper"

class Project6sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project6 = project6s(:one)
  end

  test "should get index" do
    get project6s_url
    assert_response :success
  end

  test "should get new" do
    get new_project6_url
    assert_response :success
  end

  test "should create project6" do
    assert_difference('Project6.count') do
      post project6s_url, params: { project6: { company_id: @project6.company_id, name: @project6.name } }
    end

    assert_redirected_to project6_url(Project6.last)
  end

  test "should show project6" do
    get project6_url(@project6)
    assert_response :success
  end

  test "should get edit" do
    get edit_project6_url(@project6)
    assert_response :success
  end

  test "should update project6" do
    patch project6_url(@project6), params: { project6: { company_id: @project6.company_id, name: @project6.name } }
    assert_redirected_to project6_url(@project6)
  end

  test "should destroy project6" do
    assert_difference('Project6.count', -1) do
      delete project6_url(@project6)
    end

    assert_redirected_to project6s_url
  end
end
