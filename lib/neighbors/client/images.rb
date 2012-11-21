module Neighbors
  class Client
    module Images

      def ideas_images(id, options={})
        get("ideas/#{id}/images", options)
      end

      def questions_images(id, options={})
        get("questions/#{id}/images", options)
      end

    end
  end
end

