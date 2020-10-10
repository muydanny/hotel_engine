class UnsplashSerializer
  include FastJsonapi::ObjectSerializer
  
  set_id :id 
  attributes :image_url, :color_code, :updated
end