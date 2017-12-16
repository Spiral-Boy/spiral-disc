class RenameDeleteColumnToProducts < ActiveRecord::Migration[5.1]
  def change
  	rename_column :products, :delete, :product_delete
  end
end
