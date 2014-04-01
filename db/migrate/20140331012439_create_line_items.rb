class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.references :product, null: false, index: true
      t.references :order, null: false, index: true
      t.integer :quantity, null: false
      t.decimal :price, null: false

      t.timestamps
    end
  end
end
