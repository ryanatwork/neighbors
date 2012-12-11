module Neighbors
  class Client
    module Topics

      def topics_show(topic, options={})
        get("topics/#{topic}", options)
      end

      def topics(options={})
        get("topics", options)
      end

    end
  end
end

