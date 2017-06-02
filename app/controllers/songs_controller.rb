class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def edit
  end

  def create
    @song = Song.new(billboard_params)

    if song.save?
      redirect_to songs_path
    else
      render :new
    end
  end


def song_params
  params.require(:song).permit(:name, :artist)
end

end
