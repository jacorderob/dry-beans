class CreateDeliveryRoutes < ActiveRecord::Migration[7.0]
  def change
    create_table :delivery_routes do |t|
      t.string :name, null: false, comment: 'Name of the route'
      t.integer :distance, null: false, comment: 'Total distance of the route in meters'
      t.text :description, comment: 'Optional description of route'

      t.timestamps
    end
  end
end
