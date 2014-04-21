class Product < ActiveRecord::Base
  belongs_to :category
  has_many :line_items
  mount_uploader :image, ImageUploader
  validates_presence_of :name, :description, :price, :stock_quantity
  validates_uniqueness_of :name

end
