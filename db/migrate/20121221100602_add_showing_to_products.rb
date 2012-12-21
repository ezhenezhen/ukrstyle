class AddShowingToProducts < ActiveRecord::Migration
  def change
    add_column :products, :showing, :boolean, :default => :false
  end
end
