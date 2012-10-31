require 'helper'

describe Neighbors::Client::Images do

  before do
    @client = Neighbors::Client.new
  end

  describe ".images_ideas" do
    it "should list images for the idea with the given id" do
      stub_get("/ideas/bldr-north-a-ping-pong-arena/images").
        to_return(:body => fixture("images-ideas.json"))

      image = @client.images_ideas("bldr-north-a-ping-pong-arena")
      image.first.large_url.should == "https://d30wms7jgjmff8.cloudfront.net/images/333/large.jpg?1336688160"
    end
  end

  describe ".images_questions" do
    it "should list images for the question with the given id" do
      stub_get("/questions/stclaude/images").
        to_return(:body => fixture("images-questions.json"))

      image = @client.images_questions("stclaude")
      image.first.large_url.should == "https://d30wms7jgjmff8.cloudfront.net/images/347/large08c6f3ab21b4d6d0f58c088bdcb672d9.jpg?1336688181"
    end
  end


end
