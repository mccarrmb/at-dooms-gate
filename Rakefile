$LOAD_PATH.unshift(__dir__)
$LOAD_PATH.unshift(__dir__ + '/lib')
require 'rake/testtask'
require 'rubocop/rake_task'
require 'rack'

desc 'Launch IRB with project libraries loaded'
task :console do
  require 'sinatra'
  require 'haml'
  require 'gate'
  require 'irb'
  require 'irb/completion'
  ARGV.clear
  IRB.start
end

desc 'Launch @Doom\'s Gate on port 3000 for debugging'
task :debug do
  require 'gate'
  options = {
    Host: '127.0.0.1',
    Port: '3000',
    run: false,
    raise_errors: true
  }
  Rack::Handler::WEBrick.run(AtDoomsGate, options) do |server|
    %i[INT TERM].each do |sig|
      trap(sig) { server.stop }
    end
  end
end

desc 'Launch @Doom\'s Gate on port 80 for live use (needs superuser privileges)'
task :live do
  require 'gate'
  options = {
    Host: '127.0.0.1',
    Port: '80',
    run: false,
    raise_errors: true
  }
  Rack::Handler::WEBrick.run(AtDoomsGate, options) do |server|
    %i[INT TERM].each { |sig| trap(sig) { server.stop } }
  end
end

task default: ['debug']
