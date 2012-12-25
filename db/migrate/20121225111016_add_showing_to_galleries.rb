class AddShowingToGalleries < ActiveRecord::Migration
  def change
    add_column :galleries, :showing, :boolean, :default => :false
  end
end
