require 'bundler/setup'
require 'rack'
require 'rack/server'

class HelloWorld
  def response
    [200, {'Content-Length' => '11'}, ['Hello World']]
  end
end

class HelloWorldApp
  def call(env)
    HelloWorld.new.response
  end
end

Rack::Server.start :app => HelloWorldApp.new
