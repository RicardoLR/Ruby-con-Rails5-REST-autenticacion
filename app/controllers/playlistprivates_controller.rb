class PlaylistprivatesController < ApplicationController


  # Autenticacion en todo el controller rutas
  before_action :authenticate_user!

  # o solo proteje con sesion el index
  # before_action :authenticate_user!, :only => [:index]

  # skip_before_action :authenticate_user!, :only => [:index]


  # GET /playlistprivates
  # GET /playlistprivates.json
  def index
    @playlistprivates = Playlistprivate.all
  end

  # GET /playlistprivates/1
  # GET /playlistprivates/1.json
  def show
  end

  # GET /playlistprivates/new
  def new
    @playlistprivate = Playlistprivate.new
  end

  # GET /playlistprivates/1/edit
  def edit
  end


end
