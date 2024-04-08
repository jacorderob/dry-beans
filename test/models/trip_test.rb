# == Schema Information
#
# Table name: trips
#
#  id                  :integer          not null, primary key
#  responsible         :string           not null
#  scheduled_departure :datetime         not null
#  status              :integer          default("scheduled")
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  delivery_route_id   :integer          not null
#
# Indexes
#
#  index_trips_on_delivery_route_id  (delivery_route_id)
#
# Foreign Keys
#
#  delivery_route_id  (delivery_route_id => delivery_routes.id)
#
require "test_helper"

class TripTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
