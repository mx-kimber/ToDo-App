class AddColumnsToCatTasksTable < ActiveRecord::Migration[7.0]
  def change
  add_column :category_tasks, :user_id, :integer
  add_column :category_tasks, :category_id, :integer
  
  end
end
