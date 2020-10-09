require 'rails_helper'

describe "Image of search API" do
  it "can get an image for a city" do

    get "/api/v1/image?search=denver co winter"
    expect(response).to be_successful  
    body = JSON.parse(response.body)
    
    expect(body["data"][0]["attributes"]["image_url"]).to be_a(String)
    expect(body["data"].count).to eq(10)
  end 

  it "can access db instead of api if search terms exist in the database" do 
    # create search record wuth qp you pass thru 
    search = create(:search, :with_results)
    get "/api/v1/image?search=summer beach"
    expect(response).to be_successful
    body = JSON.parse(response.body)

    expect(body["data"].count).to eq(search.results.count)
  end

  
end