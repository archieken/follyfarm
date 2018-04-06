class PhotosController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @pagetitle = "Photos"
  end

end
