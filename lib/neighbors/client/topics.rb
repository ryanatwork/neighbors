module Neighbors
  class Client
    module Topics

      def topics(id, options={})
        get("topics/#{id}", options)
      end

      def topics_city(city, options={})
        get("cities/#{city}/topics", options)
      end

    end
  end
end

