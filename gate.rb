require 'sinatra'
require 'server_database'

# Main class for At Dooms Gate
class AtDoomsGate < Sinatra::Base
  configure do
    set :public_folder, __dir__
    set :views, "#{__dir__}/views"
    set :show_exceptions, :after_handler
    ServerDatabase.build unless ServerDatabase.exist?
  end

  get '/' do
    @server_list = ServerDatabase.servers
    puts @server_list.to_s
    puts ServerDatabase.servers
    erb :index
  end
end
