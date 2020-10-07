class UnsplashService

  def get_images(search)
    response = conn.get("/search/photos") do |req|
      # USE THE "LOCATION" param  (which should be just params or query_params) and dynamically create the query string 
      req.params["query"] = "#{search} fall leaves"
    end
    json = JSON.parse(response.body, symbolize_names: true)

    json[:results].each do |result|
      image_url = result[:urls][:raw]
      Result.create(image_url: image_url, search_id: search.id)
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