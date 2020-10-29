module Inspectify
  module Inspections
    class Create < Base
      def self.create_order(attrs:)
        request do
          @method = :post
          @path = "/orders/new"
          @data = attrs
        end
      end
    end
  end
end
