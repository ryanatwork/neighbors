require 'neighbors/configuration'
require 'neighbors/client'

module Neighbors
  extend Configuration
  class << self
    # Alias for Neighbors::Client.new
    #
    # @return [Neighbors::Client]
    def new(options={})
      Neighbors::Client.new(options)
    end

    # Delegate to Neighbors::Client.new
    def method_missing(method, *args, &block)
      return super unless new.respond_to?(method)
      new.send(method, *args, &block)
    end

    def respond_to?(method, include_private=false)
      new.respond_to?(method, include_private) || super(method, include_private)
    end
  end
end
