class PlaylistsController < ApplicationController

  # creamos en consola un obj play list
  # > Playlist.create name: 'una lista genial', number_of_votes:20

  #metodo index de controlador
  def index
    # @ permite que este al alzance de la vista
    @playlists = Playlist.all
  end


  def show
    @playlist = Playlist.find(params[:id])
  end

  def new
    @playlist = Playlist.new
  end


  def create
    #usamos el metodo privado de metodos rrqueridos
    @playlist = Playlist.new(playlist_params)

    if @playlist.save

      # Redireccionamiento
      redirect_to @playlist
    else
      # recarga la misma pagina del metodo def new
      render :new

    end
  end

  # mis metodos privados
  private
  def playlist_params
    params.require(:playlist).permit(:name, :number_of_votes)
  end

end
