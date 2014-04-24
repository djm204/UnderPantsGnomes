class CartController < ApplicationController
  before_action :set_products
  def index
    flash[:notice] = 'Welcome to the site!'
    @cart_items = session[:cart]
    @ids = session[:ids]
    @qtys = session[:qtys]
    @counter = 0
    
    if @ordered.nil?
      @ordered = []
    end
    
    @ids.each do |id|    
      @ordered << Product.find(id)
    end
   
    if session[:visit_count].nil?
      @visit_count = 1
    else
      @visit_count = session[:visit_count] + 1
    end
    
    session[:visit_count] = @visit_count
  end
  
  def cart
    
    if session[:cart].nil? && params[:product_id].present?
      session[:cart] = []
      session[:cart] << {params[:product_id] => params[:qty]}
      session[:ids]= []
      session[:ids] << params[:product_id]
      session[:qtys]= []
      session[:qtys] << params[:qty]
      load_cart
    else
      add_to_cart
      
    end
    
  end
  
  def load_cart
    
    
    redirect_to :action => :index

  end
  
  def add_to_cart
    session[:cart] << {params[:product_id] => params[:qty]}
    session[:ids] << params[:product_id]
    session[:qtys] << params[:qty]
    load_cart   
  end
  
  def remove_from_cart
    session[:cart].delete_at(params[flash[:product_remove_id]].to_i)
    load_cart
  end
  
  def logout
    session[:visit_count] = nil
  end
  
  private
    
    # Use callbacks to share common setup or constraints between actions.
    def set_products
      @products_ordered = Product.where("id = ?", params[:product_id])      
    end
end
