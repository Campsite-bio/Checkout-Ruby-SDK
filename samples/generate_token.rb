require_relative './paypal_client'
require 'json'
require 'ostruct'

include PayPalCheckoutSdk::Identity

module Samples
  class GenerateToken

    def generate_token()
      request = GenerateTokenRequest::new
      begin
        response = PayPalClient::client::execute(request)
        puts "Status Code: #{response.status_code}"
        puts "Status: #{response.result.status}"
        puts "Client Token: #{response.result.client_token}"
        puts "Expires In: #{response.result.expires_in}"
        puts PayPalClient::openstruct_to_hash(response.result).to_json
        return response
      rescue PayPalHttp::HttpError => ioe
        # Exception occured while processing the refund.
        puts " Status Code: #{ioe.status_code}"
        puts " Debug Id: #{ioe.result.debug_id}"
        puts " Response: #{ioe.result}"
      end
    end
  end
end

# This is the driver function which invokes the get_order function with order id to retrieve
# an sample order. For the order id, we invoke the create order to create an new order and then we are using
# the newly created order id for retrieving the order
if __FILE__ == $0
  Samples::GenerateToken::new::generate_token
end
