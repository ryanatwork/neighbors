module Neighbors
  class Client
    module Images

      def images_ideas(id, options={})
        get("ideas/#{id}/images", options)
      end

      def images_questions(id, options={})
        get("questions/#{id}/images", options)
      end

    end
  end
end

