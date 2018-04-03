class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :news, :dofe, :terms]

  def home
    @home = true
  end

  def about
  end

  def news
  end

  def dofe
  end

  def terms
  end

end
