class CreateProvinces < ActiveRecord::Migration
  def change
    create_table :provinces do |t|
      t.string  :name, null: false
      t.decimal :pst,  null: false
      t.decimal :hst,  null: false
      t.decimal :gst,  null: false

      t.timestamps
    end
  end
end
