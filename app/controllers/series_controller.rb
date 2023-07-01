class SeriesController < ApplicationController
  def index
    @series = Series.all
  end

  def series_params
    params.require(:series).permit(:name, :synopsis, :director)
  end

  def create
    @series = Series.new(series_params)

    if @series.save
      redirect_to series_index_path
    else
      render :new
    end
  end

  def new
    @series = Series.new
  end
end
