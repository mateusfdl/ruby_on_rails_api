class CreateSales < ActiveRecord::Migration[6.1]
  def change
    create_table :sales do |t|
      t.integer :item_amount
      t.string :item_description
      t.string :purchaser_name
      t.integer :purchase_count
      t.string :merchant_address
      t.string :merchant_name
      t.timestamps
    end
  end
end
