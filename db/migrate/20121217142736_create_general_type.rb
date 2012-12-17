class CreateGeneralType < ActiveRecord::Migration
  def change

    create_table :general_type do |t|
      t.string :category
    end

  end
end
