class AddColumnToReport < ActiveRecord::Migration[5.2]
  def change
  	add_column :reports, :starting_airport_id, :integer, :after => :user_id
  	add_column :reports, :arriving_airport_id, :integer, :after => :user_id
  end
end
