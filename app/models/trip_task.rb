# frozen_string_literal: true

# == Schema Information
#
# Table name: trip_tasks
#
#  id                :integer          not null, primary key
#  address           :string           not null
#  addressee_name    :string           not null
#  completed         :boolean          default(FALSE)
#  completion_time   :datetime
#  content           :string           not null
#  estimated_arrival :datetime
#  kind              :string           not null
#  message           :text
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
class TripTask < ApplicationRecord
  belongs_to :trip

  validates :address, :addressee_name, :kind, :content, presence: true
  validates :kind, inclusion: { in: %w[delivery pickup] }
end
