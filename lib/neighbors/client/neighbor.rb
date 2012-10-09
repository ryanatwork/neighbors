module Neighbors
  class Client
    module Neighbor

      def neighbors(neighbor, options={})
        get("neighbors/#{neighbor}", options)
      end

      def friends(neighbor, options={})
        get("neighbors/#{neighbor}/friends", options)
      end

      def followers(neighbor, options={})
        get("neighbors/#{neighbor}/followers", options)
      end
    end
  end
end

