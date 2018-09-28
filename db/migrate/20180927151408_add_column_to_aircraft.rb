class AddColumnToAircraft < ActiveRecord::Migration[5.2]
  def change
  	add_column :aircrafts, :airline, :string, :after => :id, default: nil
  	add_column :aircrafts, :type, :string, :after => :airline, default: nil
  	add_column :aircrafts, :airport, :string, :after => :type, default: nil
  	add_column :aircrafts, :taken_at, :datetime, :after => :airport, default: nil
  	add_column :aircrafts, :camera_model, :string, :after => :taken_at, default: nil
  	add_column :aircrafts, :user_id, :integer, :after => :camera_model

  	remove_column :aircrafts, :aircrafts, :varchar
  end
end
