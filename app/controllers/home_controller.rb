class HomeController < ApplicationController
  before_action :set_categories
  def index
  end

  def search #displays a search form
  end

  def search_results  #displays search results
    
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categories
      @categories = Category.order(:name)
    end
end
