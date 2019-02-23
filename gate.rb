require 'sinatra'
require 'server_database'

# Main class for At Dooms Gate
class AtDoomsGate < Sinatra::Base
  configure do
    # set :public_folder, __dir__
    set :views, "#{__dir__}/views"
    set :show_exceptions, :after_handler
    ServerDatabase.build unless ServerDatabase.exist?
  end

  get '/' do
    @server_list = ServerDatabase.servers
    erb :index
  end

  get '/servers' do
    @servers = 'gather all server data'
    erb :index
  end

  get '/charon' do
    @charon = 'gather all charon data'
    erb :index
  end
end
