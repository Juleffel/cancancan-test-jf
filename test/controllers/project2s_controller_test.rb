require "test_helper"

class Project2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project2 = project2s(:one)
  end

  test "should get index" do
    get project2s_url
    assert_response :success
  end

  test "should get new" do
    get new_project2_url
    assert_response :success
  end

  test "should create project2" do
    assert_difference('Project2.count') do
      post project2s_url, params: { project2: { company_id: @project2.company_id, name: @project2.name } }
    end

    assert_redirected_to project2_url(Project2.last)
  end

  test "should show project2" do
    get project2_url(@project2)
    assert_response :success
  end

  test "should get edit" do
    get edit_project2_url(@project2)
    assert_response :success
  end

  test "should update project2" do
    patch project2_url(@project2), params: { project2: { company_id: @project2.company_id, name: @project2.name } }
    assert_redirected_to project2_url(@project2)
  end

  test "should destroy project2" do
    assert_difference('Project2.count', -1) do
      delete project2_url(@project2)
    end

    assert_redirected_to project2s_url
  end
end
