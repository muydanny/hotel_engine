require 'rails_helper'

describe "Image of search API" do
  it "can get an image for a city" do

    get "/api/v1/image?location=denver,co"
    expect(response).to be_successful  
    body = JSON.parse(response.body)
    expect(body["data"]["attributes"]["location_image"]).to be_a(String)
  end 

  it "returns an error with bad request" do 

    post 
  end
end