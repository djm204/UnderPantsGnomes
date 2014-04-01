class ContactsController < InheritedResources::Base

  def create
    @about = About.new(about_params)

    respond_to do |format|
      if @about.save
        format.html { redirect_to @about, notice: 'About was successfully created.' }
        format.json { render action: 'show', status: :created, location: @about }
      else
        format.html { render action: 'new' }
        format.json { render json: @about.errors, status: :unprocessable_entity }
      end
    end
  end

  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @about = Abouts.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def about_params
      params.require(:about).permit(:title, :content)
    end
end
