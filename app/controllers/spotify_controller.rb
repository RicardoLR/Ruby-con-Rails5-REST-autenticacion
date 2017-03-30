

# ==================================
# gema para api de spotify
# gem 'rspotify'

# > RSpotify::Track.search("Abrazame muy fuerte")
# rails g controller spotify search # unica accion search
# ==================================


class SpotifyController < ApplicationController

  # NO existen res, res como en node o Laravel
  def search
    # Se hace peticion GET a Spotify y recibe el parametros title
    title = params[:title]
    if title
      # creo var result
      @results =  RSpotify::Artist.search(title) # Metodo de API del modelo spotify
    end

  end

end
