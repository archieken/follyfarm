class ImagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @pagetitle = "Photos"
  end

  def index_edit
    @pagetitle = "Photos Edit"
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(photos_params)
      if @image.save
             redirect_to root_path
      else
          redirect_to root_path
      end
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
  end

  private

  def photos_params
     params.require(:image).permit(:description, :source)
  end

end
