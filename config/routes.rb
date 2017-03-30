Rails.application.routes.draw do

  devise_for :views
  devise_for :users
  get 'spotify/search'

  resources :playlistprivates
  # Creado por Models
  # > rails generate scaffold track title:string album:string artist:string
  resources :tracks

  # Usar plural, nombre como queramos
  resources :playlists

  root to: "tracks#index"

  # algun error
  # devise_for :installs

end
