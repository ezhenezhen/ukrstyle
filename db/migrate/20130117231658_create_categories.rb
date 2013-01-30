class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer :general_type_id
      t.string :name
    end
  end
end
