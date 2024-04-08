require "test_helper"

class TripTasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trip_task = trip_tasks(:one)
  end

  test "should get index" do
    get trip_tasks_url, as: :json
    assert_response :success
  end

  test "should create trip_task" do
    assert_difference("TripTask.count") do
      post trip_tasks_url, params: { trip_task: { adress: @trip_task.adress, adressee_name: @trip_task.adressee_name, completed: @trip_task.completed, message: @trip_task.message, trip_id: @trip_task.trip_id, kind: @trip_task.kind } }, as: :json
    end

    assert_response :created
  end

  test "should show trip_task" do
    get trip_task_url(@trip_task), as: :json
    assert_response :success
  end

  test "should update trip_task" do
    patch trip_task_url(@trip_task), params: { trip_task: { adress: @trip_task.adress, adressee_name: @trip_task.adressee_name, completed: @trip_task.completed, message: @trip_task.message, trip_id: @trip_task.trip_id, kind: @trip_task.kind } }, as: :json
    assert_response :success
  end

  test "should destroy trip_task" do
    assert_difference("TripTask.count", -1) do
      delete trip_task_url(@trip_task), as: :json
    end

    assert_response :no_content
  end
end
