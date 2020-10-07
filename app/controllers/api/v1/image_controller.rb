class Api::V1::ImageController < ApplicationController

  def show
    search = Search.find_by(query_params: organized_params)
    unless search 
      search = Search.create(query_params: organized_params)
      UnsplashService.new.get_images(search)
    end

    render json: UnsplashSerializer.new(search.results).serialized_json
  end

  private
  
  def search_params
    params.permit(:search)
  end

  def query_params
    search_params[:search].split(',')
  end

  def organized_params
    query_params.reduce({}) do |collector, term|
      split = term.split('=')
      collector[split.first] = split.last
      collector
    end
  end
    
end