class CreateAirlines < ActiveRecord::Migration[5.2]
  def change
    create_table :airlines, :id=>false, :created_at=>false, :updated_at=>false do |t|
      t.column :id, 'INTEGER PRIMARY KEY AUTOINCREMENT'
      t.string :name
      t.string :cord
    end
  end
end