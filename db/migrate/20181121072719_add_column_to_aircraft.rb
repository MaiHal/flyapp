class AddColumnToAircraft < ActiveRecord::Migration[5.2]
  def change
    add_column :aircrafts, :airline_name, :varchar
    add_column :aircrafts, :airport_name, :varchar
  end
end
