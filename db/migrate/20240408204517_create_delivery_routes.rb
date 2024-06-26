# frozen_string_literal: true

class CreateDeliveryRoutes < ActiveRecord::Migration[7.0]
  def change
    create_table :delivery_routes do |t|
      t.string :name, null: false, index: { unique: true }
      t.integer :distance, null: false
      t.text :description

      t.timestamps
    end
  end
end
