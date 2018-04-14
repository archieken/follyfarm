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

end
