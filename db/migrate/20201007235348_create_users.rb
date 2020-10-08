class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :city
      t.string :img_url
      t.string :username
      t.string :password_digest

      t.timestamps
    end
  end
end
