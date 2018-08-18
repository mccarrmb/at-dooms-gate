require 'sqlite3'

# Module for building and interacting with the SQLite database
module ServerDatabase
  DOOM_DB = 'data/atdoomsgate.db'.freeze
  def exist?
    File.exist?(DOOM_DB)
  end

  def build
    db = SQLite3::Database.new(DOOM_DB)
    db.execute 'CREATE TABLE IF NOT EXISTS Servers(id INTEGER PRIMARY KEY, name TEXT, port INT)'
  rescue SQLite3::Exception => e
    puts e.to_s
  ensure
    db.close if db
  end
end
