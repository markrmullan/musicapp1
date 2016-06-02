class AlbumsController < ApplicationController
  def show
    @album = Album.first
    render :show
  end
end
