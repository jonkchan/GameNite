class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.text :email
      t.text :collection, array: true
      t.text :wishlist, array: true
      t.timestamps
    end
  end
end
