require 'bundler/setup'
require 'rack'
require "rack/test"
require 'test/unit'

class HelloWorld
  def response
    [200, {'Content-Length' => '11'}, ['Hello World']]
  end
end

class HelloWorldApp
  def self.call(env)
    HelloWorld.new.response
  end
end


class HelloWorldAppTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    HelloWorldApp
  end

  def test_redirect_logged_in_users_to_dashboard
    get "/"

    assert last_response.ok?
    assert_equal last_response.body, 'Hello World'
  end

end

