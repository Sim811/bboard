class ArtistsController < ApplicationController
  # before_action :set_bboard
  before_action :set_artist, only: [ :update, :show, :edit, :destroy ]

  def index
    @artists = Artist.all
  end

  def show
  end

  def new
    @artist = @bboard.artists.new
  end

  def edit
  end

  def update
    if @artist.update(artist_params)
      redirect_to [@bboard, @artist]
    else
      render :edit
    end
  end

  def create
    @artist = @bboard.artists.new(artist_params)
    if @artist.save
      redirect_to [@bboard, @artist]
    else
      render :new
    end 
  end

  def destroy
    @artist.destroy
    redirect_to bboards_artists_path
  end

  private

  # def set_bboard
  #   @bboard = Bboard.find(params[:bboard_id])
  # end

  def set_artist
    @artist = Artist.find(params[:id])
  end

  def set_params
    params.require(:artist).permit(:name, :age, :genre)
  end

end
