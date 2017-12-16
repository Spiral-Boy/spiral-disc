class AddLabelToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :label, :string
  end
end
