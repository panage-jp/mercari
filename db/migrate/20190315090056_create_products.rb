class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name, index: true, null: false
      t.text :detail
      t.integer :delivery_fee_payer, null: false
      t.integer :delivery_agency, null: false
      t.integer :delivery_day, null:false
      t.integer :price, index: true, null: false
      t.string :status, null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
