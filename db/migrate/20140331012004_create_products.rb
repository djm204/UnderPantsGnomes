class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.decimal :price, null: false, precision: 5, scale: 2
      t.string :image
      t.string :status
      t.integer :stock_quantity, null: false
      t.references :category, index: true

      t.timestamps
    end
  end
end
