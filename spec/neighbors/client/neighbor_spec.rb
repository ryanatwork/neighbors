require 'helper'

describe Neighbors::Client::Neighbor do

  before do
    @client = Neighbors::Client.new
  end

  describe ".neighbors" do
    it "should show detailed information about the neighbor with the given id" do
      stub_get("/neighbors/tee").
        to_return(:body => fixture("neighbors-show.json"))

      neighbor = @client.neighbors("tee")
      neighbor.name.should == "Tee Parham"
    end
  end

  describe ".friends" do
    it "should list friends of the neighbor with the given id" do
      stub_get("/neighbors/tee/friends").
        to_return(:body => fixture("neighbors-friends.json"))

      friends = @client.friends("tee")
      friends.first.id.should == "bridget"
    end
  end

  describe ".followers" do
    it "should list followers of the neighbor with the given id" do
      stub_get("/neighbors/tee/followers").
        to_return(:body => fixture("neighbors-followers.json"))

      followers = @client.followers("tee")
      followers.first.id.should == "jp"
    end
  end

end
