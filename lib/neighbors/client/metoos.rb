module Neighbors
  class Client
    module MeToos

      def ideas_metoos(id, options={})
        get("ideas/#{id}/me_toos", options)
      end

      def neighbors_metoos(id, options={})
        get("neighbors/#{id}/me_toos", options)
      end

    end
  end
end

