class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.integer :genre_id
      t.string :artist_name
      t.string :product_name
      t.text :image
      t.integer :price
      t.text :info
      t.integer :stock
      t.date :release_date
      t.integer :delete

      t.timestamps
    end
  end
end
