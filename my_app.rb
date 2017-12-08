require './lib/swaggering'
require 'sinatra'
require 'active_record'

# only need to extend if you want special configuration!
class MyApp < Swaggering
  self.configure do |config|
    config.api_version = '1.0.0'
  end
end

# include the api files
Dir["./api/*.rb"].each { |file|
  require file
}

get '/' do
  "Hello world"
end
