class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :assets, :ticket_id, :product_id
  end
end
