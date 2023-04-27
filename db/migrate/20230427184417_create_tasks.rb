class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.integer :category_id
      t.integer :user_id
      t.string :title
      t.text :description
      t.string :deadline
      t.string :completed

      t.timestamps
    end
  end
end
