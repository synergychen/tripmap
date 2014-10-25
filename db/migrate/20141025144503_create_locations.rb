class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :location
      t.datetime :start_time
      t.datetime :end_time
      t.string :transportation_mode
      t.integer :transportation_time
      t.integer :trip_id

      t.timestamps
    end
  end
end
