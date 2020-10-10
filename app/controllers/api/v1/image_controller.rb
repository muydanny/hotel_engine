class Api::V1::ImageController < ApplicationController

  def show
    search = Search.find_by(query_params: query_params)
    unless search 
      search = Search.create(query_params: query_params)
      UnsplashService.new.get_images(search)
    end
    
    results = search.results
    
    if params[:sort] && params[:sort] == "updated"
      results = results.order("#{params[:sort]} #{params[:dir] || 'desc'}")
    end
    
    if params[:filter]
      results = results.where(color_code: params[:filter])
    end

    if results.empty?
      render json: { info: "No Results" }.as_json, status: 200
    else
      render json: UnsplashSerializer.new(results).serialized_json, code: 200
    end
  end

  private
  
  def search_params
    params.permit(:search, :sort, :dir, :filter)
  end

  def query_params
    search_params[:search]
  end
    
end