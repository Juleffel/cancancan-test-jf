require "test_helper"

class Project3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project3 = project3s(:one)
  end

  test "should get index" do
    get project3s_url
    assert_response :success
  end

  test "should get new" do
    get new_project3_url
    assert_response :success
  end

  test "should create project3" do
    assert_difference('Project3.count') do
      post project3s_url, params: { project3: { company_id: @project3.company_id, name: @project3.name } }
    end

    assert_redirected_to project3_url(Project3.last)
  end

  test "should show project3" do
    get project3_url(@project3)
    assert_response :success
  end

  test "should get edit" do
    get edit_project3_url(@project3)
    assert_response :success
  end

  test "should update project3" do
    patch project3_url(@project3), params: { project3: { company_id: @project3.company_id, name: @project3.name } }
    assert_redirected_to project3_url(@project3)
  end

  test "should destroy project3" do
    assert_difference('Project3.count', -1) do
      delete project3_url(@project3)
    end

    assert_redirected_to project3s_url
  end
end
