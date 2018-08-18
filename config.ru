require_relative 'gate.rb'
require 'sinatra'
require 'haml'
require_relative 'gate.rb'

set :run, false
set :raise_errors, true
run Sinatra::Application
