class DestinationsController < ApplicationController
  # def new
  #   @destination = Destination.new
  # end
  #
  # def create
  #   @destination = Destination.new(destination_params)
  #   if @destination.valid?
  #     @destination.save
  #     redirect_to destination_path(@destination)
  #   else
  #     render :new
  #   end
  # end
  def show
    @destination = Destination.find(params[:id])
    @most_liked = @destination.most_liked
    @average_age = @destination.average_age_of_bloggers
  end
  #
  # def edit
  #   @destination = Destination.find(params[:id])
  # end
  #
  # def update
  #   @destination = Destination.find(params[:id])
  #   @destination.update(destination_params)
  #   if @destination.valid?
  #     redirect_to destination_path(@destination)
  #   else
  #     render :edit
  #   end
  # end

  private

  def destination_params
    params.require(:destination).permit(:name, :country)
  end

end
