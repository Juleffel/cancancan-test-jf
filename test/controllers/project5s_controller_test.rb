require "test_helper"

class Project5sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project5 = project5s(:one)
  end

  test "should get index" do
    get project5s_url
    assert_response :success
  end

  test "should get new" do
    get new_project5_url
    assert_response :success
  end

  test "should create project5" do
    assert_difference('Project5.count') do
      post project5s_url, params: { project5: { company_id: @project5.company_id, name: @project5.name } }
    end

    assert_redirected_to project5_url(Project5.last)
  end

  test "should show project5" do
    get project5_url(@project5)
    assert_response :success
  end

  test "should get edit" do
    get edit_project5_url(@project5)
    assert_response :success
  end

  test "should update project5" do
    patch project5_url(@project5), params: { project5: { company_id: @project5.company_id, name: @project5.name } }
    assert_redirected_to project5_url(@project5)
  end

  test "should destroy project5" do
    assert_difference('Project5.count', -1) do
      delete project5_url(@project5)
    end

    assert_redirected_to project5s_url
  end
end
