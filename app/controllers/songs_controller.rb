class SongsController < ApplicationController
  before_action :set_artist
  before_action :set_song, only: [:show, :edit, :update, :destroy]
  
  def new
    @song = @artist.songs.new
  end

  def show
    @song = Song.find(params[:id])

  end

  def edit
    render partial: "form"
  end

  def destroy
    @song.destroy
    redirect_to artist_songs_path(@song)
  end

  private

  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

  def song_params
    params.require(:topic).permit(:name)
  end

  def set_song
    @song = Song.find(params[:id])
  end
end
