class CreateUserLists < ActiveRecord::Migration[5.2]
  def change
    create_table :user_lists do |t|
      #do we need alc name
      t.string :sex
      t.integer :weight
    end
  end
end
