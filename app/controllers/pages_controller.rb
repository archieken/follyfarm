class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :news]

  def home
  end

  def about
  end

  def news
  end

end
