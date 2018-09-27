class CreateAircrafts < ActiveRecord::Migration[5.2]
  def change
    create_table :aircrafts do |t|
      t.string :aircrafts

      t.timestamps
    end
  end
end
