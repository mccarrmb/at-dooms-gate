require 'sinatra'

# Main class for At Dooms Gate
class AtDoomsGate < Sinatra::Base
  set :public_folder, File.dirname(__FILE__)
  get '/' do
    erb :index
  end
end
