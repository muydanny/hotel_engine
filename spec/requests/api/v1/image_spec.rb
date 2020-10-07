require 'rails_helper'

describe "Image of search API" do
  it "can get an image for a city" do

    get "/api/v1/image?search=location=denver co,season=winter"
    expect(response).to be_successful  
    body = JSON.parse(response.body)
    
    expect(body["data"][0]["attributes"]["image_url"]).to be_a(String)
    expect(body["data"].count).to eq(10)
  end 

  # it "returns an error with bad request" do 

  #   post 
  # end
end