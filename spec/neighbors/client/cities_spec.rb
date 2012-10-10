require 'helper'

describe Neighbors::Client::Cities do

  before do
    @client = Neighbors::Client.new
  end

  describe ".cities_show" do
    it "should show detailed information about the city with the given id" do
      stub_get("/cities/bldr").
        to_return(:body => fixture("cities.json"))

      city = @client.cities_show("bldr")
      city.name.should == "Boulder"
    end
  end

  describe ".cities" do
    it "should return an array of cities, ordered by city name" do
      stub_get("/cities").
        to_return(:body => fixture("cities-index.json"))

      cities = @client.cities
      cities.first.id.should == "atl"
    end
  end

end
