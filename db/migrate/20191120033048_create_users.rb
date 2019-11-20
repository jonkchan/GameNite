class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.text :collection, default: [].to_yaml
      t.text :wishlist, default: [].to_yaml

      t.timestamps
    end
  end
end
