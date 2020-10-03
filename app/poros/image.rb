class Image

  attr_reader :id,
              :location_image

  def initialize(image)
    require 'pry'; binding.pry
    @id = nil
    @location_image = image
  end
end