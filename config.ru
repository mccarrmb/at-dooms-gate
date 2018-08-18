require 'sinatra'
require 'haml'
require File.dirname(__FILE__) + '/gate'

set :run, false
set :raise_errors, true
run AtDoomsGate
