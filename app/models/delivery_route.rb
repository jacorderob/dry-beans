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
# Indexes
#
#  index_delivery_routes_on_name  (name) UNIQUE
#
class DeliveryRoute < ApplicationRecord
  has_many :trips, dependent: :destroy

  validates :name, :distance, presence: true
  validates :name, uniqueness: true
  validates :distance, comparison: { greater_than: 0 }
end
