require 'rest-client'
require 'json'
require 'pry'

module Inspectify
  module Inspections
    class Base
      def self.request(&block)
        begin
          yield if block_given?

          inspectify_environment = ::Inspectify.inspectify_environment
          inspectify_auth_token = ::Inspectify.inspectify_auth_token

          @url = "https://#{inspectify_environment}.getinspectify.com/api/v1#{@path}"
          @headers = @headers.merge({
            'Authorization' => "Bearer #{inspectify_auth_token}",
          })
          @data = @data || {}

          response = RestClient::Request.execute(
            method: @method,
            url: @url,
            headers: headers,
            data: @data,
          )
          parsed_response = JSON.parse(response)

          if response.code.eql?(200) || response.code.eql?(201)
            return parsed_response
          end

          if response.code.eql?(404)
            return 'Requested resource not found'
          end

          if response.code.eql?(400)
            return 'Invalid request'
          end

          if response.code.eql?(401)
            return 'Invalid Token or no access'
          end
        rescue RestClient::BadRequest => e
          JSON.parse(e.response.body)
        end
      end
    end
  end
end
