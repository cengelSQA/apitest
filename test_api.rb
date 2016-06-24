require 'minitest/autorun'
require 'rest-client'
require 'json'

class TestApi < Minitest::Test
  def setup
    @response = RestClient.get 'http://localhost:4567/'
  end

  def test_code
    assert_equal @response.code, 200
  end

  def test_message
    assert_equal JSON.parse(@response)['message'], 'hello'
  end
end
