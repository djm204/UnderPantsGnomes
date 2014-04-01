class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :customer, null: false, index: true
      t.string :status, null: false
      t.decimal :taxes, null: false
      

      t.timestamps
    end
  end
end
