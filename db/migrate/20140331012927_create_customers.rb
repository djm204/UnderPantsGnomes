class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name, null: false
      t.string :billing_address, null: false
      t.string :shipping_address, null: false
      t.string :city, null: false
      t.string :postal_code, null: false
      t.references :province_id, null: false
      t.decimal :credit_limit
      t.string :email_address, null: false

      t.timestamps
    end
  end
end
