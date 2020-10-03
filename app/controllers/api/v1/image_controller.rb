class Api::V1::ImageController < ApplicationController

  def show
    require 'pry'; binding.pry
    image = UnsplashService.new.get_image(location_params[:location])
   
    render json: UnsplashSerializer.new(Image.new(image)).serialized_json
  end

  private
  
  def location_params
    params.permit(:location)
  end
end