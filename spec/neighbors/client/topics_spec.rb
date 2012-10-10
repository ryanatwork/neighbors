require 'helper'

describe Neighbors::Client::Topics do

  before do
    @client = Neighbors::Client.new
  end

  describe ".topics" do
    it "should show detailed information about the topic with the given id" do
      stub_get("/topics/nola-green").
        to_return(:body => fixture("topics-show.json"))

      topic = @client.topics("nola-green")
      topic.name.should == "Green"
    end
  end

  describe ".topics_city" do
    it "should list all the topics in the city with the given id" do
      stub_get("/cities/bldr/topics").
        to_return(:body => fixture("topics-city.json"))

      city_topics = @client.topics_city("bldr")
      city_topics.first.id.should == "bldr-green"
    end
  end

end
