Rails.application.routes.draw do

  get 'spotify/search'

  resources :playlistprivates
  # Creado por Models
  # > rails generate scaffold track title:string album:string artist:string
  resources :tracks

  # Usar plural, nombre como queramos
  resources :playlists


end
