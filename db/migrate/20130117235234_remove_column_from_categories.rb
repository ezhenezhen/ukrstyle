class RemoveColumnFromCategories < ActiveRecord::Migration
  def change
    remove_column :categories, :general_type_id
  end
end
