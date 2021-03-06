require 'faraday'
require 'neighbors/version'

module Neighbors
  module Configuration
    VALID_OPTIONS_KEYS = [
      :adapter,
      :faraday_config_block,
      :api_endpoint,
      :login,
      :password,
      :proxy,
      :oauth_token,
      :client_id,
      :client_secret,
      :user_agent,
      :request_host,
      :per_page].freeze

    DEFAULT_ADAPTER        = Faraday.default_adapter
    DEFAULT_API_ENDPOINT   = 'https://neighborland.com/api/v1/'
    DEFAULT_USER_AGENT     = "Neighborland Ruby Gem #{Neighbors::VERSION}".freeze
    DEFAULT_AUTO_TRAVERSAL = false

    attr_accessor(*VALID_OPTIONS_KEYS)

    def self.extended(base)
      base.reset
    end

    def configure
      yield self
    end

    def options
      VALID_OPTIONS_KEYS.inject({}){|o,k| o.merge!(k => send(k)) }
    end

    def api_endpoint=(value)
      @api_endpoint = File.join(value, "")
    end

    def faraday_config(&block)
      @faraday_config_block = block
    end

    def reset
      self.adapter        = DEFAULT_ADAPTER
      self.api_endpoint   = DEFAULT_API_ENDPOINT
      self.login          = nil
      self.password       = nil
      self.proxy          = nil
      self.oauth_token    = nil
      self.client_id      = nil
      self.client_secret  = nil
      self.request_host   = nil
      self.user_agent     = DEFAULT_USER_AGENT
    end
  end
end
