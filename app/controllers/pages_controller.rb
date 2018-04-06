class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :news, :dofe, :terms]

  def home
    @home = true
  end

  def about
    @pagetitle = "About Us"
    @news = News.first
    @prices = Price.first
    @findus = Findu.first
    @contact = Contactinfo.first
  end

  def dofe
    @pagetitle = "D of E"
  end

  def terms
    @pagetitle = "Terms and Attractions"
  end

end
