class AddAttachmentAssetToProducts < ActiveRecord::Migration

  def change
    add_column :products, :asset_file_name, :string
    add_column :products, :asset_content_type, :string
    add_column :products, :asset_file_size, :integer
    add_column :products, :asset_updated_at, :datetime
  end

end
