require "test_helper"

class DeliveryRoutesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @delivery_route = delivery_routes(:one)
  end

  test "should get index" do
    get delivery_routes_url, as: :json
    assert_response :success
  end

  test "should create delivery_route" do
    assert_difference("DeliveryRoute.count") do
      post delivery_routes_url, params: { delivery_route: { distance: @delivery_route.distance, name: @delivery_route.name } }, as: :json
    end

    assert_response :created
  end

  test "should show delivery_route" do
    get delivery_route_url(@delivery_route), as: :json
    assert_response :success
  end

  test "should update delivery_route" do
    patch delivery_route_url(@delivery_route), params: { delivery_route: { distance: @delivery_route.distance, name: @delivery_route.name } }, as: :json
    assert_response :success
  end

  test "should destroy delivery_route" do
    assert_difference("DeliveryRoute.count", -1) do
      delete delivery_route_url(@delivery_route), as: :json
    end

    assert_response :no_content
  end
end
