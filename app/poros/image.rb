class Image

  attr_reader :id,
              :location_image

  def initialize(image)
    
    @id = nil
    @location_image = image[:results][0][:urls][:full]
  end
end