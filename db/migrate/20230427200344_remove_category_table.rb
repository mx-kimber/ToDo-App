class RemoveCategoryTable < ActiveRecord::Migration[7.0]
  def change
 drop_table :add_category_image_to_tables
  end
end
