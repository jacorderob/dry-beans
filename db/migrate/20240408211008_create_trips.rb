# frozen_string_literal: true

class CreateTrips < ActiveRecord::Migration[7.0]
  def change
    create_table :trips do |t|
      t.references :delivery_route, null: false, foreign_key: true, index: true
      t.datetime :scheduled_departure, null: false
      t.integer :status, default: 0
      t.string :responsible, null: false

      t.timestamps
    end
  end
end
