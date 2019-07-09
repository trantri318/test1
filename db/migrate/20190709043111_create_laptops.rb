class CreateLaptops < ActiveRecord::Migration[5.2]
  def change
    create_table :laptops do |t|
      t.string :title
      t.string :description
      t.decimal :price
      t.boolean :published
      t.timestamps
    end
  end
end
