class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.string :file_name
      t.integer :airline_id
      t.string :aircraft_type
      t.string :route
      t.integer :user_id
      t.datetime :taken_at

      t.timestamps
    end
  end
end
