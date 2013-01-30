class CategoriesGeneralTypes < ActiveRecord::Migration
  def change
    create_table :categories_general_types, :id => false do |t|
      t.integer :category_id
      t.integer :general_type_id
    end
  end
end
