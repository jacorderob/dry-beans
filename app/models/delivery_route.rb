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
class DeliveryRoute < ApplicationRecord
  validates :name, :distance, presence: true
  validates :distance, comparison: { greater_than: 0 }
end
