module Neighbors
  class Client
    module Cities

      def cities_show(city, options={})
        get("cities/#{city}", options)
      end

      def cities(options={})
        get("cities", options)
      end

    end
  end
end

