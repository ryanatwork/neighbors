require 'helper'

describe Neighbors do
  after do
    Neighbors.reset
  end

  describe ".respond_to?" do
    it "should be true if method exists" do
      Neighbors.respond_to?(:new, true).should be_true
    end
  end

  describe ".new" do
    it "should be a Neighbors::Client" do
      Neighbors.new.should be_a Neighbors::Client
    end
  end

end
