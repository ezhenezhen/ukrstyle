class RenameGeneralTypesTable < ActiveRecord::Migration
  def change

    rename_column :general_types, :category, :name

  end
end
