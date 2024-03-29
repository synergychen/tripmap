class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.date :date
      t.string :city
      t.boolean :completed, null: false, default: false

      t.timestamps
    end
  end
end
