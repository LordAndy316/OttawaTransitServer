class StopsController < ApplicationController
  def index
    @stops = Stop.all
    
  end
  def show 
    @stop = Stop.find(params[:id])
  end
    def new
    @stop = Stop.new
  end
    def update
      @stops = Stop.find(params[:id])
      @stops.updateApi
      redirect_to stop_path(@stops)
  end

  def create
    @stop = Stop.new(stop_params)

    if @stop.save
      redirect_to @stop
    else
      render :new, status: :unprocessable_entity
    end
  end
  def destroy
    @stop = Stop.find(params[:id])
    @stop.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def stop_params
      params.require(:stop).permit(:title, :body)
    end
end
