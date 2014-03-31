class Product < ActiveRecord::Base
  belongs_to :category_id
  has_many :line_items
end
