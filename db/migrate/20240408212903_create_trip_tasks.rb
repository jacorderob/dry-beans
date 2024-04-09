# frozen_string_literal: true

class CreateTripTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :trip_tasks do |t|
      t.references :trip, null: false, foreign_key: true, index: true
      t.string :kind, null: false
      t.string :address, null: false
      t.string :addressee_name, null: false
      t.boolean :completed, default: false
      t.text :message
      t.string :content, null: false
      t.datetime :estimated_arrival
      t.datetime :completion_time

      t.timestamps
    end
  end
end
