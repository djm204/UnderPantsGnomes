class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.references :order_id, null: false
      t.references :product_id, null: false
      t.integer :quantity, null: false
      t.decimal :price, null: false

      t.timestamps
    end
  end
end
