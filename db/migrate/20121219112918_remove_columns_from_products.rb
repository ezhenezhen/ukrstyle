class RemoveColumnsFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :asset_file_name, :asset_content_type, :asset_file_size, :asset_updated_at
  end
end
