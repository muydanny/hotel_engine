FactoryBot.define do 
  factory :result do 
    image_url { "www.google.com" }
    association :search, factory: :search
  end
end