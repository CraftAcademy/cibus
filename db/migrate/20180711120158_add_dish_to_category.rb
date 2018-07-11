class AddDishToCategory < ActiveRecord::Migration[5.2]
  def change
    change_table :dishes do |t|
      t.references :category, foreign_key: true
    end
  end
end
