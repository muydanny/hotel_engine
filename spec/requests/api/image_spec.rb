require 'rails_helper'

describe "Image of search API" do
  it "can get a background image for a city" do

    get "/api/v1/background?location=denver,co"
    expect(response).to be_successful  
    body = JSON.parse(response.body)
    expect(body["data"]["attributes"]["location_background_image"]).to be_a(String)
  end 
end