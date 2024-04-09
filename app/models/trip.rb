# frozen_string_literal: true

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
class Trip < ApplicationRecord
  belongs_to :delivery_route

  has_many :trip_tasks, dependent: :destroy

  enum status: {
    scheduled: 0,
    in_transit: 1,
    completed: 2
  }

  validates :scheduled_departure, :responsible, presence: true
end
