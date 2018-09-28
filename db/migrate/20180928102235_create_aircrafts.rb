class CreateAircrafts < ActiveRecord::Migration[5.2]
  def change
    create_table :aircrafts, :id=>false do |t|
      t.column :id, 'INTEGER PRIMARY KEY AUTOINCREMENT'
      t.string :file_name
      t.integer :airline_id
      t.string :aircraft_type
      t.integer :airport_id
      t.string :camera_model
      t.integer :user_id
      t.datetime :taken_at

      t.timestamps
    end
  end
end
