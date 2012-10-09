module Neighbors
  module Request
    def delete(path, options={})
      request(:delete, path, options)
    end

    def get(path, options={})
      request(:get, path, options)
    end

    def patch(path, options={})
      request(:patch, path, options)
    end

    def post(path, options={})
      request(:post, path, options)
    end

    def put(path, options={})
      request(:put, path, options)
    end

    private

    def request(method, path, options)
      response = connection.send(method) do |request|
        case method
        when :delete, :get
          request.url(path, options)
        when :patch, :post, :put
          request.path = path
          request.body = options unless options.empty?
        end
      end
      response.body
    end
  end
end
