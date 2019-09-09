class CreateProductBrands < ActiveRecord::Migration[5.0]
  def change
    create_table :product_brands do |t|
      t.references :product, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
    end
  end
end
