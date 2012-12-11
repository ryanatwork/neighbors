require 'helper'

describe Neighbors::Client::Topics do

  before do
    @client = Neighbors::Client.new
  end

  describe ".topics_show" do
    it "should show detailed information about the topic with the given id" do
      stub_get("/topics/green").
        to_return(:body => fixture("topics-show.json"))

      topic = @client.topics_show("green")
      topic.name.should == "Green"
    end
  end

  describe ".topics" do
    it "should list all the topics" do
      stub_get("/topics").
        to_return(:body => fixture("topics-index.json"))

      topics = @client.topics
      topics.first.id.should == "animals"
    end
  end

end
