class AttractionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:view]

  def view
    @pagetitle = "Attractions"
  end

end
