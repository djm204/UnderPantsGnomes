class CreateAboutUs < ActiveRecord::Migration
  def change
    create_table :about_us do |t|
      t.string :title, null: false
      t.text :content, null: false

      t.timestamps
    end
  end
end
