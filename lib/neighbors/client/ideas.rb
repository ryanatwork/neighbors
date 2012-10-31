module Neighbors
  class Client
    module Ideas

      def ideas(id, options={})
        get("ideas/#{id}", options)
      end

      def ideas_city(id, options={})
        get("cities/#{id}/ideas", options)
      end

      def ideas_neighborhood(id, options={})
        get("neighborhoods/#{id}/ideas", options)
      end

      def ideas_questions(id, options={})
        get("questions/#{id}/ideas", options)
      end

      def ideas_neighbors(id, options={})
        get("neighbors/#{id}/ideas", options)
      end

      def ideas_topics(id, options={})
        get("topics/#{id}/ideas", options)
      end
    end
  end
end

