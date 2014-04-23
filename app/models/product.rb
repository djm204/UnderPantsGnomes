class Product < ActiveRecord::Base
  belongs_to :category
  has_many :line_items
  mount_uploader :image, ImageUploader
  validates_presence_of :name, :description, :price, :stock_quantity
  validates_uniqueness_of :name


  def self.keyword_search(keywords, option)
    keywords = "%" +  keywords + "%"
    if option === ""
      Product.where("name LIKE ? OR description LIKE ?",
                                    keywords, keywords)
    else
      Product.where("name LIKE ? AND category_id = ? OR description LIKE ? AND category_id = ? ",
                                    keywords, option, keywords, option)   
    end
    
      
  end
end
