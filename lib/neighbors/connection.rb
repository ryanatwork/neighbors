require 'faraday_middleware'

module Neighbors
  # @private
  module Connection
    private

    def connection
      url = Neighbors.api_endpoint

      options = {
        :proxy => proxy,
        :ssl => { :verify => false },
        :url => url,
      }

      connection = Faraday.new(options) do |builder|
        builder.request :url_encoded
        builder.use Faraday::Response::RaiseError
        builder.use FaradayMiddleware::Mashify
        builder.use FaradayMiddleware::ParseJson
        builder.adapter *adapter
      end

    end
  end
end
