class PlacesController < ApplicationController
  def index
    @place = Place.all
    render json: @place.to_json
    
  end

  def show
    @place = Place.find(params[:id])
    render json: @place.to_json
  end

  def create
    @place = Place.new(
      name: [params[:name]],
      address: [params[:address]]
    )
    if @place.save
      render json: {message: "updated"}
    else
      render json: {message: "Unsuccessful"}
    end
  end

  def destroy
    @place = Place.find(params[:id])
    @place.delete
    render json: {message: "This product is deleted the product"}

  end

end
