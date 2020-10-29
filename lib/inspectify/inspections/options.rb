module Inspectify
  module Inspections
    class Options < Base
      def self.get_order_options(order_id:)
        request do
          @method = :get
          @path = "/orders/#{order_id}/options"
        end
      end
    end
  end
end
