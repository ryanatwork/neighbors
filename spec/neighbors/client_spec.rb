require 'helper'

describe Neighbors::Client do
  describe "api_endpoint" do

    after(:each) do
      Neighbors.reset
    end

    it "should default to https://neighborland.com/api/v1/" do
      client = Neighbors::Client.new
      client.api_endpoint.should == 'https://neighborland.com/api/v1/'
    end

    it "should be set " do
      Neighbors.api_endpoint = 'http://foo.dev'
      client = Neighbors::Client.new
      client.api_endpoint.should == 'http://foo.dev/'
    end
  end


end
