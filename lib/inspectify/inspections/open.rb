module Inspectify
  module Inspections
    class Open < Base
      def self.get_open_orders
        request do
          @method = :get
          @path = "/orders/open"
        end
      end
    end
  end
end
