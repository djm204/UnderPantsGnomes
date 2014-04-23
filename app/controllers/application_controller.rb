class ApplicationController < ActionController::Base
  before_action :set_categories
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  private
    
    # Use callbacks to share common setup or constraints between actions.
    def set_categories
      @categories = Category.order(:name)      
    end

end
