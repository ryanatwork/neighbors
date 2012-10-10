require 'helper'

describe Neighbors::Client::Questions do

  before do
    @client = Neighbors::Client.new
  end

  describe ".questions" do
    it "should show detailed information about the question with the given id" do
      stub_get("/questions/stclaude").
        to_return(:body => fixture("questions-show.json"))

      question = @client.questions("stclaude")
      question.name.should == "St. Claude Avenue"
    end
  end

  describe ".questions_city" do
    it "should list all the questions in the city with the given id" do
      stub_get("/cities/bldr/questions").
        to_return(:body => fixture("questions-city.json"))

      city_question = @client.questions_city("bldr")
      city_question.first.id.should == "stclaude"
    end
  end

end
