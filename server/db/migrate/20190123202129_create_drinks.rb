class CreateDrinks < ActiveRecord::Migration[5.2]
  def change
    create_table :drinks do |t|
      t.integer :drink_amount
      t.belongs_to :alcohol, foreign_key: true
      t.belongs_to :user_list, foreign_key: true

      t.timestamps
    end
  end
end
