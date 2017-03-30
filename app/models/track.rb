
# Agregando modulos, donde haya sido mayor a hace 5 dias
module MiModuleFindRecentAgregate
  def find_recent
    where("timestamps > ?", 5.days.ago)
  end
end


class Track < ApplicationRecord

  validates_presence_of :title, :album, :artist

  has_many :playlists, -> { extending MiModuleFindRecentAgregate }, before_add: :check_playlist_size_limit #revizar documentacion callbacks

  # antes de guardar reviza que siga habiendo limite en la lista, tamaño maximo 5
  def check_playlist_size_limit(playlist)

  end


end
