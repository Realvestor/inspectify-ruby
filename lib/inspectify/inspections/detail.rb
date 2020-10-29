module Inspectify
  module Inspections
    class Detail < Base
      def self.get_order_details(order_id:)
        request do
          @method = :get
          @path = "/orders/#{order_id}/details"
        end
      end
    end
  end
end
