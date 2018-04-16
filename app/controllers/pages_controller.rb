class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :news, :dofe, :terms]

  def home
    @home = true
  end

  def about
    @pagetitle = "About Us"
    @about = About.last
    @news = News.last
    @prices = Price.last
    @findus = Findu.last
    @contact = Contactinfo.last


    @marker = create_markers()

  end

  def dofe
    @dofe = true
  end

  def terms
    @terms = Term.last
  end



  def about_edit

    @about = About.last

    @news = News.last

    @findus = Findu.last

    @contactinfo = Contactinfo.last

    @price = Price.last

  end


    def terms_edit

    @terms = Term.last

  end

  private

    def create_markers()

     markers = []
     markers << {
        # icon: {url: "http://res.cloudinary.com/di7okux3q/image/upload/v1523814159/campground.svg"},
        lat: 51.8844963,
        lng: -1.8227667,
        infoWindow: { content: render_to_string(partial: "shared/marker_details") }
      }
      markers
    end

end
