require './lib/swaggering'
require 'sinatra'
require 'sinatra/activerecord'
require 'pry'

current_dir = Dir.pwd
Dir["#{current_dir}/models/*.rb"].each { |file| require file }

# only need to extend if you want special configuration!
class App < Swaggering
  self.configure do |config|
    config.api_version = '1.0.0'
  end
end

# include the api files
Dir["./api/*.rb"].each { |file|
  require file
}

get '/' do
  @tournaments = Tournament.all
  erb :'tournaments/index'
end
