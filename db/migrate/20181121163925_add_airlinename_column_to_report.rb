class AddAirlinenameColumnToReport < ActiveRecord::Migration[5.2]
  def change
    add_column :reports, :airline_name, :varchar
  end
end
