# == Schema Information
#
# Table name: delivery_routes
#
#  id          :integer          not null, primary key
#  description :text
#  distance    :integer          not null
#  name        :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class DeliveryRouteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end