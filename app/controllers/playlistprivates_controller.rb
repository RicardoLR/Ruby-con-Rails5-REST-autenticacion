class PlaylistprivatesController < ApplicationController


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
