# == Schema Information
#
# Table name: trip_tasks
#
#  id                :integer          not null, primary key
#  address           :string           not null
#  addressee_name    :string           not null
#  completed         :boolean          default(FALSE)
#  completion_time   :datetime
#  estimated_arrival :datetime
#  message           :text
#  type              :string           not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  trip_id           :integer          not null
#
# Indexes
#
#  index_trip_tasks_on_trip_id  (trip_id)
#
# Foreign Keys
#
#  trip_id  (trip_id => trips.id)
#
require "test_helper"

class TripTaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
