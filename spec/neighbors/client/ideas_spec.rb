require 'helper'

describe Neighbors::Client::Ideas do

  before do
    @client = Neighbors::Client.new
  end

  describe ".ideas" do
    it "should show detailed information about the idea with the given id" do
      stub_get("/ideas/nola-st-claude-more-live-theater-and-ind").
        to_return(:body => fixture("ideas-show.json"))

      idea = @client.ideas("nola-st-claude-more-live-theater-and-ind")
      idea.name.should == "more live theater and independent film screenings"
    end
  end

  describe ".ideas_city" do
    it "should list the ideas in the city with the given id" do
      stub_get("/cities/nola/ideas").
        to_return(:body => fixture("ideas-city.json"))

      idea = @client.ideas_city("nola")
      idea.first.name.should == "Coffee"
    end
  end

  describe ".ideas_neighborhood" do
    it "should list the ideas in the neighborhood with the given id" do
      stub_get("/neighborhoods/nola-st-claude/ideas").
        to_return(:body => fixture("ideas-neighborhood.json"))

      idea = @client.ideas_neighborhood("nola-st-claude")
      idea.first.name.should == "a green drycleaner"
    end
  end

  describe ".ideas_questions" do
    it "should list the ideas for the question with the given id" do
      stub_get("/questions/stclaude/ideas").
        to_return(:body => fixture("ideas-questions.json"))

      idea = @client.ideas_questions("stclaude")
      idea.first.name.should == "empty retail spaces to use Storefront.is"
    end
  end

  describe ".ideas_neighbors" do
    it "should list ideas created by neighbor with the given id" do
      stub_get("/neighbors/tee/ideas").
        to_return(:body => fixture("ideas-neighbors.json"))

      idea = @client.ideas_neighbors("tee")
      idea.first.name.should == "Blue Bottle Coffee"
    end
  end

  describe ".ideas_topics" do
    it "should list the ideas in the topic with the given id" do
      stub_get("/topics/nola-art/ideas").
        to_return(:body => fixture("ideas-topics.json"))

      idea = @client.ideas_topics("nola-art")
      idea.first.name.should == "free \"book borrow\" boxes all over Treme"
    end
  end

end
