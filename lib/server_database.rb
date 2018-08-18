require 'sqlite3'

# Module for building and interacting with the SQLite database
module ServerDatabase
  DB_FILE = 'data/atdoomsgate.db'.freeze
  DB_DIR = File.dirname(DB_FILE).freeze
  def self.exist?
    File.exist?(DB_FILE)
  end

  def self.build
    Dir.mkdir(DB_DIR) unless Dir.exist?(DB_DIR)
    db = SQLite3::Database.new(DB_FILE)
    db.execute 'CREATE TABLE IF NOT EXISTS Servers(id INTEGER PRIMARY KEY, name TEXT, port INT)'
  rescue SQLite3::Exception => e
    puts e.to_s # should really shunt this to an app log
  ensure
    db.close if db
  end

  def self.servers
    server_list = []
    db = SQLite3::Database.open(DB_FILE)
    query = db.prepare('SELECT * FROM Servers')
    results = query.execute
    results.each do |row|
      server_list << { id: row[0], name: row[1], port: row[2] }
    end
    server_list
  rescue SQLite3::Exception => e
    puts e.to_s
  ensure
    query.close if query
    db.close if db
  end
end
