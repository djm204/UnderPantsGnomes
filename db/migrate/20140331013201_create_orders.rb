class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references, :customer_id
      t.string, :status
      t.decimal, :taxes
      t.references :line_item_id, index: true

      t.timestamps
    end
  end
end
