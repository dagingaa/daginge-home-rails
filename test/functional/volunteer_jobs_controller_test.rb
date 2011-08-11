require 'test_helper'

class VolunteerJobsControllerTest < ActionController::TestCase
  setup do
    @volunteer_job = volunteer_jobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:volunteer_jobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create volunteer_job" do
    assert_difference('VolunteerJob.count') do
      post :create, volunteer_job: @volunteer_job.attributes
    end

    assert_redirected_to volunteer_job_path(assigns(:volunteer_job))
  end

  test "should show volunteer_job" do
    get :show, id: @volunteer_job.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @volunteer_job.to_param
    assert_response :success
  end

  test "should update volunteer_job" do
    put :update, id: @volunteer_job.to_param, volunteer_job: @volunteer_job.attributes
    assert_redirected_to volunteer_job_path(assigns(:volunteer_job))
  end

  test "should destroy volunteer_job" do
    assert_difference('VolunteerJob.count', -1) do
      delete :destroy, id: @volunteer_job.to_param
    end

    assert_redirected_to volunteer_jobs_path
  end
end
