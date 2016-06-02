class BandsController < ApplicationController
  def show
    @band = Band.first
    # fail
    render :show
  end
end
