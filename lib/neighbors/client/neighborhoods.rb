module Neighbors
  class Client
    module Neighborhoods

      def neighborhoods(neighborhood, options={})
        get("neighborhoods/#{neighborhood}",options)
      end

      def city_neighborhoods(city, options={})
        get("cities/#{city}/neighborhoods", options)
      end

    end
  end
end

