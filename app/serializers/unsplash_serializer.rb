class UnsplashSerializer
  include FastJsonapi::ObjectSerializer
  set_id :id 
  attributes :location_image
end