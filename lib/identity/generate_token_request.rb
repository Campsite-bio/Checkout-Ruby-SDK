# frozen_string_literal: true

# THIS CLASS WAS NOT AUTOGENERATED.

require 'cgi'

module PayPalCheckoutSdk
  module Identity
    #
    # Generates a token
    #
    class GenerateTokenRequest

      attr_accessor :path, :body, :headers, :verb

      def initialize
        @headers = {}
        @body = nil
        @verb = 'POST'
        @path = '/v1/identity/generate-token?'
        @headers['Content-Type'] = 'application/json'
      end

      def prefer(prefer)
        @headers['Prefer'] = prefer
      end

      def request_body(body)
        @body = body
      end

    end
  end
end