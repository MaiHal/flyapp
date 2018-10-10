class AddColumnToReport < ActiveRecord::Migration[5.2]
  def change
  	add_column :reports, :comment, :text, :after => :user_id
  end
end
