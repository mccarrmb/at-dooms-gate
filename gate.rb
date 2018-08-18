require 'sinatra'

set :public_folder, File.dirname(__FILE__)
get '/' do
  'pretend the doom stuff is here'
end
