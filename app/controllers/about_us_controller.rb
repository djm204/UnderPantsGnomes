class AboutUsController < InheritedResources::Base
  def index
    @about_us = AboutUs.all
  end
  
  def create
    @about_us = AboutUs.new(about_us_params)

    respond_to do |format|
      if @about_us.save
        format.html { redirect_to @about_us, notice: 'AboutUs was successfully created.' }
        format.json { render action: 'show', status: :created, location: @about_us }
      else
        format.html { render action: 'new' }
        format.json { render json: @about_us.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    
   # Never trust parameters from the scary internet, only allow the white list through.
    def about_us_params
      params.require(:about_us).permit(:title, :content)
    end
end
