class AddColunmToReport < ActiveRecord::Migration[5.2]
  def change
    add_column :reports, :departure_date, :datetime, :after => :user_id
  end
end
