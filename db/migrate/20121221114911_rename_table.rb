class RenameTable < ActiveRecord::Migration
  def change
    rename_table :general_type, :general_types
  end
end
