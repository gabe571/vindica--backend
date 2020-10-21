class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.string :name
      t.integer :user_id
      t.integer :coffee_shop_id

      t.timestamps
    end
  end
end
