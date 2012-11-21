require 'helper'

describe Neighbors::Client::MeToos do

  before do
    @client = Neighbors::Client.new
  end

  describe ".ideas_metoos" do
    it "should show detailed information about all MeToos for an idea with a given id" do
      stub_get("/ideas/bldr-north-a-ping-pong-arena/me_toos").
        to_return(:body => fixture("ideas-metoos.json"))

      metoo = @client.ideas_metoos("bldr-north-a-ping-pong-arena")
      metoo.first.idea_name.should == "a ping pong arena"
    end
  end

  describe  ".neighbors_metoos" do
    it "should show detailed information about all MeToos by the neighbor with the given id" do
      stub_get("/neighbors/tee/me_toos").
        to_return(:body => fixture("neighbors-metoos.json"))

      metoo = @client.neighbors_metoos("tee")
      metoo.first.idea_name.should == "a food truck pod on the empty lot by the Herald Journal"
    end
  end

end
