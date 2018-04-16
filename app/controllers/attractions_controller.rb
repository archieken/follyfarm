class AttractionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :new, :create, :edit, :update]

  def index
    @pagetitle = "Attractions"
    @marker = create_markers()
  end

  def edit
    @attraction = Attraction.find(params[:id])
  end


  def index_edit
     @pagetitle = "Attractions Edit"
  end

  def update
    @attraction = Attraction.find(params[:id])
      if @attraction.update(attraction_params)
             redirect_to root_path
      else
          redirect_to root_path
      end
  end

  def new
    @attraction = Attraction.new
  end

  def create
    @attraction = Attraction.new(attraction_params)
      if @attraction.save!
             redirect_to root_path
      else
          redirect_to root_path
      end
  end

  def destroy
    @attraction = Attraction.find(params[:id])
    @attraction.destroy
  end

  private

  def attraction_params
     params.require(:attraction).permit(:content, :subject, :image, :link, :address)
  end



    def create_markers()

      markers = []

      list_attractions = Attraction.where.not(latitude: nil, longitude: nil)

      list_attractions.each do |attraction|
         markers << {
          lat: attraction.latitude,
          lng: attraction.longitude,
          infoWindow: { content: render_to_string(partial: "shared/attraction_card", locals: { attraction: attraction }) }
          }
      end

      follyfarm_marker = {
      icon: {url: "http://res.cloudinary.com/di7okux3q/image/upload/v1523814159/campground.svg"},
      lat: 51.8844963,
      lng: -1.8227667,
      infoWindow: { content: render_to_string(partial: "shared/marker_details") }
      }

      markers << follyfarm_marker

  end

end
