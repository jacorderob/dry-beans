# frozen_string_literal: true

require 'test_helper'

class TripTasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trip_task = trip_tasks(:pickup_la_reina1)
  end

  test 'should create trip_task' do
    assert_difference('TripTask.count') do
      post trip_tasks_url, params: {
        trip_task: {
          trip_id: @trip_task.trip_id,
          address: @trip_task.address,
          kind: @trip_task.kind,
          addressee_name: @trip_task.addressee_name
        }
      }, as: :json
    end

    assert_response :created
    assert_equal response.location, delivery_route_url(@trip_task.trip.delivery_route)

    created_task = TripTask.last
    assert_equal @trip_task.address, created_task.address
    assert_equal @trip_task.addressee_name, created_task.addressee_name
    assert_equal @trip_task.kind, created_task.kind
    assert_not created_task.completed
    assert_nil created_task.message
  end

  test 'should fail when invalid params' do
    post trip_tasks_url, params: {
      trip_task: {
        trip_id: @trip_task.trip_id,
        address: @trip_task.address,
        kind: 'invalid kind',
        addressee_name: @trip_task.addressee_name
      }
    }, as: :json

    assert_response :unprocessable_entity
  end

  test 'shoud raise error when missing params' do
    assert_raise ActionController::ParameterMissing do
      post trip_tasks_url, params: {
        another_model: {
          trip_id: @trip_task.trip_id,
          address: @trip_task.address,
          kind: 'invalid kind',
          addressee_name: @trip_task.addressee_name
        }
      }, as: :json
    end
  end
end
