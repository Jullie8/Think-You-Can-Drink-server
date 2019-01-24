class CreateAlcohols < ActiveRecord::Migration[5.2]
  def change
    create_table :alcohols do |t|
      t.string :name
      t.integer :abv
      t.integer :sd
      t.string :category

      t.timestamps
    end
  end
end
