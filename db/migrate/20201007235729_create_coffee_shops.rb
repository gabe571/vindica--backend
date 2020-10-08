class CreateCoffeeShops < ActiveRecord::Migration[6.0]
  def change
    create_table :coffee_shops do |t|
      t.integer :lat
      t.integer :lng
      t.string :name
      t.string :address
      t.integer :zipcode
      t.string :description
      t.string :photo

      t.timestamps
    end
  end
end
