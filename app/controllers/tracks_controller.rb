class TracksController < ApplicationController
  def show
    @track = Track.first
    # fail
    render :show
  end
end
