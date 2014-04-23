class HomeController < ApplicationController
  before_action :set_categories
  def index
  end

  def search #displays a search form
  end

  def search_results  #displays search results
    keywords = "%" +  params[:search_keywords] + "%"
    @found_products = Product.where("name LIKE ? OR description LIKE ?",
                                    keywords, keywords)
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categories
      @categories = Category.order(:name)
    end
end
