class Product < ActiveRecord::Base
  belongs_to :category
  has_many :line_items
  has_attached_file :image

end
