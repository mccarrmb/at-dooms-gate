$LOAD_PATH.unshift(__dir__)
$LOAD_PATH.unshift(__dir__ + '/lib')
require 'sinatra'
require 'haml'
require 'gate'

set :run, false
set :raise_errors, true
run AtDoomsGate
