# frozen_string_literal: true

require 'test_helper'

class DeliveryRoutesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @delivery_route = delivery_routes(:la_reina)
  end

  test 'should show delivery_route with trips and tasks' do
    get delivery_route_url(@delivery_route), as: :json
    assert_response :success

    route = JSON.parse(response.body)
    assert_equal @delivery_route.id, route['id']
    assert_equal @delivery_route.name, route['name']
    assert_equal @delivery_route.distance, route['distance']
    assert_equal @delivery_route.description, route['description']
    assert_equal @delivery_route.trips.count, route['trips'].count

    trip = route['trips'].first
    expected_trip = @delivery_route.trips.first
    assert_equal expected_trip.id, trip['id']
    assert_equal expected_trip.scheduled_departure, trip['scheduled_departure']
    assert_equal expected_trip.responsible, trip['responsible']
    assert_equal expected_trip.status, trip['status']
    assert_equal expected_trip.trip_tasks.count, trip['trip_tasks'].count

    task = trip['trip_tasks'].first
    expected_task = expected_trip.trip_tasks.first
    assert_equal expected_task.id, task['id']
    assert_equal expected_task.kind, task['kind']
    assert_equal expected_task.address, task['address']
    assert_equal expected_task.addressee_name, task['addressee_name']
    assert_equal expected_task.completed, task['completed']
    assert_equal expected_task.message, task['message']
  end

  test 'should raise erron when route does not exist' do
    assert_raise ActiveRecord::RecordNotFound do
      get delivery_route_url(1), as: :json
    end
  end
end
