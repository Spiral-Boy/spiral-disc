class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :all_price
      t.string :send_street_address
      t.string :status

      t.timestamps
    end
  end
end
