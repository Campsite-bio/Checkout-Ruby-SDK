

require_relative '../test_harness'
require_relative '../../lib/lib'
require 'json'

include PayPalCheckoutSdk::Identity

describe GenerateTokenRequest do

  it 'successfully makes a request' do
    request = GenerateTokenRequest.new()

    resp = TestHarness::client.execute(request)
    expect(resp.status_code).to eq(200)
    expect(resp.result).not_to be_nil
  end
end
