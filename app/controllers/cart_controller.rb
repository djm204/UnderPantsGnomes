class CartController < ApplicationController
  def index
    session[:visit_count] ||= 0
    session[:visit_count] += 1
    @visit_count = session[:visit_count]
    
    cart
  end
  
  def cart
    
    if session[:cart].nil? && params[:product_id].present?
      session[:cart] = {params[:product_id] => params[:qty]}
      load_cart
    else
      add_to_cart
    end
    
  end
  
  def load_cart
    #code
  end
  
  def add_to_cart
    #code
  end
  
  def logout
    session[:visit_count] = nil
  end
end
