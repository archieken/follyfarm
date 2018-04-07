class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :news, :dofe, :terms]

  def home
    @home = true
  end

  def about
    @pagetitle = "About Us"
    @news = News.last
    @prices = Price.last
    @findus = Findu.last
    @contact = Contactinfo.last
  end

  def dofe
  end

  def terms
    @pagetitle = "Terms and Conditions"
  end



  def about_edit
    @news = News.last

    @findus = Findu.last

    @contactinfo = Contactinfo.last

    @price = Price.last

  end

end
