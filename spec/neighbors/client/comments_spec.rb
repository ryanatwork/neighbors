require 'helper'

describe Neighbors::Client::Comments do

  before do
    @client = Neighbors::Client.new
  end

  describe ".ideas_comments" do
    it "should show detailed information about all comments about an idea with the given id" do
      stub_get("/ideas/nola-st-claude-more-live-theater-and-ind/comments ").
        to_return(:body => fixture("comments-ideas.json"))

      comment = @client.ideas_comments("nola-st-claude-more-live-theater-and-ind")
      comment.first.support_count.should == 0
    end
  end

  describe ".neighbors_comments" do
   it "should show detailed information about all comments made by the neighbor with the given id" do
     stub_get("/neighbors/tee/comments ").
        to_return(:body => fixture("comments-neighbors.json"))

     comment = @client.neighbors_comments("tee")
     comment.first.support_count.should == 0

   end
  end

end
