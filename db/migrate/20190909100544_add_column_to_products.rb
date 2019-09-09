class AddColumnToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :buyer, :integer
  end
end
