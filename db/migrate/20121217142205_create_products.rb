class CreateProducts < ActiveRecord::Migration

  def change

    create_table :products do |t|
      t.string :product_type
      t.integer :general_type_id
      t.string :name
      t.decimal :price
      t.boolean :available, :default => true
      t.integer :minimal_quantity, :default => 1
      t.string :description

      t.timestamps
    end

  end

end
