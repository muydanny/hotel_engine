FactoryBot.define do 
  factory :result do 
    image_url { "https://www.hotelengine.com/" }
    color_code { Faker::Color.hex_color }
    updated { Faker::Time.between(from: DateTime.now - 30, to: DateTime.now, format: :default) }
    association :search, factory: :search
  end
end