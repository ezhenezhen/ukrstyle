class AddGalleryIdToAssets < ActiveRecord::Migration
  def change
    add_column :assets, :gallery_id, :integer
  end
end
