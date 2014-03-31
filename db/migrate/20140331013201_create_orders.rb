class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :customer, index: true
      t.string :status, null: false
      t.decimal :taxes
      t.references :line_item, index: true

      t.timestamps
    end
  end
end
