class ArtworksController < ApplicationController
  def show
    artwork = Artwork.where(params[:id])
    send_data artwork.image, type: 'image/png', disposition: :inline
  end
end
