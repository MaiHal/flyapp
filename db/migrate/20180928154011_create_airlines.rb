class CreateAirlines < ActiveRecord::Migration[5.2]
  def change
    create_table :airlines, :created_at=>false, :updated_at=>false do |t|
      t.string :name
      t.string :cord
    end
  end
end