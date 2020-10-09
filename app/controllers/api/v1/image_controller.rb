class Api::V1::ImageController < ApplicationController

  def show
    search = Search.find_by(query_params: query_params)
    unless search 
      search = Search.create(query_params: query_params)
      UnsplashService.new.get_images(search)
    end

    if search.results.length != 0
      render json: UnsplashSerializer.new(search.results).serialized_json, code: 200
    else
      payload = { error: "No Content"}
      render :json => payload, :status => 204
    end
  end

  private
  
  def search_params
    params.permit(:search)
  end

  def query_params
    search_params[:search]
  end
    
end