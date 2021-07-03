class PlaylistsController < ApplicationController
  before_action :set_playlist, only: %i[ show edit update destroy ]

  def index
    @playlists = Playlist.all
  end

  def show
  end

  def new
    @playlist = Playlist.new
  end

  def edit
  end

  def create
    @playlist = Playlist.new(playlist_params)

    if @playlist.save
      redirect_to @playlist, notice: "Track was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @playlist.update(playlist_params)
      redirect_to @playlist, notice: "Track was successfully updated."
    else
      render :edit, status: :unprocessable_entity 
    end
  end

  def destroy
    @playlist.destroy
    redirect_to playlists_url, notice: "Track was successfully destroyed."
  end

  private
    def set_playlist
      @playlist = Playlist.find(params[:id])
    end

    def playlist_params
      params.require(:playlist).permit(:song_title, :artist, :album)
    end
end
