class UnsplashService

  def get_image(location)
    response = conn.get("/search/photos") do |req|
      req.params["query"] = "#{location} fall leaves"
    end
    json = JSON.parse(response.body, symbolize_names: true)
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