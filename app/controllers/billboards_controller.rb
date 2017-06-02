class BillboardsController < ApplicationController
  def index
    @billboards = Billboard.all
  end

  def show
    @billboards = Billboard.find(params[:id])
  end

  def new
    @billboard = Billboard.new
  end

  def edit
  end

  def create
    @billboards = Billboard.new(billboard_params)

    if @billboards.save
      redirect_to billboards_path
    else
      render :new
    end
  end


def billboard_params
  params.require(:billboard).permit(:name, :artist)
end

end
