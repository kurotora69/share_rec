class RecreationsController < ApplicationController

  def index
  end

  def new
    @recreation = Recreation.new
  end
  
  def create
    @recreation = Recreation.new(recreation_params)
    if @recreation.save
      redirect_to root_path
    else
      render :new
    end
  end


  private

  def recreation_params
    params.require(:recreation).permit(:genre_tag, :title, :explanation, :tool, :place, :posture, :staff_number, :care_number, :image).merge(user_id: current_user.id)
  end  

end
