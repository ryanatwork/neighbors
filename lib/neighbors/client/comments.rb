module Neighbors
  class Client
    module Comments

      def ideas_comments(id, options={})
        get("ideas/#{id}/comments", options)
      end

      def neighbors_comments(id, options={})
        get("neighbors/#{id}/comments", options)
      end

    end
  end
end

