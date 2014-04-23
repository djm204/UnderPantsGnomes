class HomeController < ApplicationController
  def index
    @categories = Category.order(:name)
  end

  def show
  end

  def update
  end

  def edit
  end

  def new 
  end
end
