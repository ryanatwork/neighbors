require 'neighbors/connection'
require 'neighbors/request'
require 'neighbors/client/neighbor'

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

    include Neighbors::Client::Neighbor

  end
end
