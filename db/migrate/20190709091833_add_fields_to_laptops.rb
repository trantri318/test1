class AddFieldsToLaptops < ActiveRecord::Migration[5.2]
  def change
    add_column :laptops, :category_id, :integer
  end
end
