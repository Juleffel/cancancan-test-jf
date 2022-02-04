require "test_helper"

class Project4sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project4 = project4s(:one)
  end

  test "should get index" do
    get project4s_url
    assert_response :success
  end

  test "should get new" do
    get new_project4_url
    assert_response :success
  end

  test "should create project4" do
    assert_difference('Project4.count') do
      post project4s_url, params: { project4: { company_id: @project4.company_id, name: @project4.name } }
    end

    assert_redirected_to project4_url(Project4.last)
  end

  test "should show project4" do
    get project4_url(@project4)
    assert_response :success
  end

  test "should get edit" do
    get edit_project4_url(@project4)
    assert_response :success
  end

  test "should update project4" do
    patch project4_url(@project4), params: { project4: { company_id: @project4.company_id, name: @project4.name } }
    assert_redirected_to project4_url(@project4)
  end

  test "should destroy project4" do
    assert_difference('Project4.count', -1) do
      delete project4_url(@project4)
    end

    assert_redirected_to project4s_url
  end
end
