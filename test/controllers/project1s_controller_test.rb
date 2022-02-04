require "test_helper"

class Project1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project1 = project1s(:one)
  end

  test "should get index" do
    get project1s_url
    assert_response :success
  end

  test "should get new" do
    get new_project1_url
    assert_response :success
  end

  test "should create project1" do
    assert_difference('Project1.count') do
      post project1s_url, params: { project1: { company_id: @project1.company_id, name: @project1.name } }
    end

    assert_redirected_to project1_url(Project1.last)
  end

  test "should show project1" do
    get project1_url(@project1)
    assert_response :success
  end

  test "should get edit" do
    get edit_project1_url(@project1)
    assert_response :success
  end

  test "should update project1" do
    patch project1_url(@project1), params: { project1: { company_id: @project1.company_id, name: @project1.name } }
    assert_redirected_to project1_url(@project1)
  end

  test "should destroy project1" do
    assert_difference('Project1.count', -1) do
      delete project1_url(@project1)
    end

    assert_redirected_to project1s_url
  end
end
