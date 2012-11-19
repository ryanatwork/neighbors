module Neighbors
  class Client
    module Comments

      def comments_ideas(id, options={})
        get("ideas/#{id}/comments", options)
      end

      def comments_neighbors(id, options={})
        get("neighbors/#{id}/comments", options)
      end

    end
  end
end

