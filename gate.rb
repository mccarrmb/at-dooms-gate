require 'sinatra'
require 'server_database'

# Main class for At Dooms Gate
class AtDoomsGate < Sinatra::Base
  configure do
    set :public_folder, __dir__
    set :views, "#{__dir__}/views"
    set :show_exceptions, :after_handler
  end

  get '/' do
    erb :index
  end
end
