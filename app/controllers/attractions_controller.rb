class AttractionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :new, :create, :edit, :update]

  def index
    @pagetitle = "Attractions"
  end

  def edit
    @attraction = Attraction.find(params[:id])
  end


  def index_edit
     @pagetitle = "Attractions Edit"
  end

  def update
    @attraction = Attraction.find(params[:id])
    @attraction.update!(attraction_params)
  end

  def new
    @attraction = Attraction.new
  end

  def create
    @attraction = Attraction.new
    @attraction.create!(attraction_params)
  end

  def destroy
    @attraction = Attraction.find(params[:id])
    @attraction.destroy
  end

  private

  def attraction_params
     params.require(:attraction).permit(:content)
  end

end
