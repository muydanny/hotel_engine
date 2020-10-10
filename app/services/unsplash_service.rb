class UnsplashService

  def get_images(search)
    response = conn.get("/search/photos") do |req|
      req.params["query"] = search.query_params
    end
    
    json = JSON.parse(response.body, symbolize_names: true)

    json[:results].each do |result|
      image_url = result[:urls][:raw]
      color_code = result[:color]
      updated = result[:updated_at]
  
      Result.create(image_url: image_url, color_code: color_code, updated: updated, search_id: search.id)
    end
  end

  private

  BASE_URL = "https://api.unsplash.com".freeze

  def conn
    Faraday.new(BASE_URL) do |req|
      req.params["client_id"] = ENV["UNSPLASH_KEY"]
      req.headers["Accept-Version"] = 'v1'
    end
  end
end