require 'neighbors/connection'
require 'neighbors/request'

require 'neighbors/client/cities'
require 'neighbors/client/neighbor'
require 'neighbors/client/neighborhoods'
require 'neighbors/client/questions'

module Neighbors
  class Client
    attr_accessor(*Configuration::VALID_OPTIONS_KEYS)

    def initialize(options={})
      options = Neighbors.options.merge(options)
      Configuration::VALID_OPTIONS_KEYS.each do |key|
        send("#{key}=", options[key])
      end
    end

    include Neighbors::Connection
    include Neighbors::Request

    include Neighbors::Client::Cities
    include Neighbors::Client::Neighbor
    include Neighbors::Client::Neighborhoods
    include Neighbors::Client::Questions

  end
end
