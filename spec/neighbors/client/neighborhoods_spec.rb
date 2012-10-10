require 'helper'

describe Neighbors::Client::Neighborhoods do

  before do
    @client = Neighbors::Client.new
  end

  describe ".neighborhoods" do
    it "should show detailed information about the neighborhood with the given id" do
      stub_get("/neighborhoods/bldr-north").
        to_return(:body => fixture("neighborhoods-show.json"))

      neighborhood = @client.neighborhoods("bldr-north")
      neighborhood.name.should == "North Boulder"

    end
  end

  describe ".city_neighborhoods" do
    it "should return a list of neighborhoods for a given city id" do
      stub_get("/cities/bldr/neighborhoods").
        to_return(:body => fixture("neighborhoods-city.json"))

      neighborhood = @client.city_neighborhoods("bldr")
      neighborhood.first.name.should == "Colorado University"
    end
  end

end
