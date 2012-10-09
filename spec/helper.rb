unless ENV['CI']
  require 'simplecov'
  SimpleCov.start do
    add_filter 'spec'
  end
end
require 'neighbors'
require 'rspec'
require 'webmock/rspec'

def a_delete(url)
  a_request(:delete, neighborland_url(url))
end

def a_get(url)
  a_request(:get, neighborland_url(url))
end

def a_patch(url)
  a_request(:patch, neighborland_url(url))
end

def a_post(url)
  a_request(:post, neighborland_url(url))
end

def a_put(url)
  a_request(:put, neighborland_url(url))
end

def stub_get(url)
  stub_request(:get, neighborland_url(url))
end

def stub_patch(url)
  stub_request(:patch, neighborland_url(url))
end

def stub_post(url)
  stub_request(:post, neighborland_url(url))
end

def stub_put(url)
  stub_request(:put, neighborland_url(url))
end

def fixture_path
  File.expand_path("../fixtures", __FILE__)
end

def fixture(file)
  File.new(fixture_path + '/' + file)
end

def neighborland_url(url)
    "https://neighborland.com/api/v1#{url}"
end
