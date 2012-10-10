module Neighbors
  class Client
    module Questions

      def questions(id, options={})
        get("questions/#{id}", options)
      end

      def questions_city(city,options={})
        get("cities/#{city}/questions", options)
      end

    end
  end
end

