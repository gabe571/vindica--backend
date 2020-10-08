class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :reviewed_coffee
      t.string :coffee_shop_id
      t.integer :user_id
      t.integer :rating

      t.timestamps
    end
  end
end
