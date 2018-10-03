class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.string :file_name
      t.integer :airline_id
      t.string :starting_point
      t.string :arrival_point
      t.integer :user_id

      t.timestamps
    end
  end
end
