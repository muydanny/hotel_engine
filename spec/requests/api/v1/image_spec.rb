require 'rails_helper'

describe "Image of search API", :vcr do
  it "can get an image for a city" do
    get "/api/v1/image?search=denver co winter"
    expect(response).to be_successful  
    body = JSON.parse(response.body)
    
    expect(body["data"][0]["attributes"]["image_url"]).to be_a(String)
    expect(body["data"].count).to eq(10)
  end 

  it "can access db instead of api if search terms exist in the database", :vcr do 
    search = create(:search, :with_results)
    get "/api/v1/image?search=summer beach"
    expect(response).to be_successful
    body = JSON.parse(response.body)

    expect(body["data"].count).to eq(search.results.count)
  end

  it "gives a 204 if the search parameter is missing", :vcr do 
    get "/api/v1/image?denver co winter"
    body = JSON.parse(response.body)

    expect(response).to be_successful
    expect(body["info"]).to eq "No Results"
  end

  it "provides the ability to sort the responses", :vcr do 
    get "/api/v1/image?search=summer beach&sort=updated&dir=asc"
    expect(response).to be_successful
    
    body = JSON.parse(response.body)
    first = body["data"].first
    first_date = DateTime.parse(first["attributes"]["updated"])
    last = body["data"].last
    last_date = DateTime.parse(last["attributes"]["updated"])
    
    expect(last_date > first_date).to be true
  end

  it "provides the ability to filter the responses", :vcr do 
    color_code = "#dabed8"
    search = create(:search, :with_results)
    search.results.update_all(color_code: "#FFFFFF")
    search.results.first.update(color_code: color_code)
    
    get "/api/v1/image?search=summer beach&filter=%23dabed8"

    body = JSON.parse(response.body)
    expect(body["data"].count).to eq 1
    expect(body["data"].first["attributes"]["color_code"]).to eq "#dabed8"
  end

end