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
    db.execute 'CREATE TABLE IF NOT EXISTS Servers(
                id INTEGER PRIMARY KEY,
                name TEXT,
                address TEXT,
                port INT
                )'
    db.execute 'CREATE TABLE IF NOT EXISTS MapRotation(
                id INTEGER PRIMARY KEY,
                name TEXT
                )'
    db.execute 'CREATE TABLE IF NOT EXISTS MapRotationMaps(
                id INTEGER PRIMARY KEY,
                order_number INT,
                fk map_id INT
                )'
    db.execute 'CREATE TABLE IF NOT EXISTS Maps(
                id INTEGER PRIMARY KEY,
                name TEXT
                )'
    db.execute 'CREATE TABLE IF NOT EXISTS ZandronumConfigs(
                id INTEGER PRIMARY KEY,
                name TEXT,
                skill INT,
                cooperative INT,
                deathmatch INT,
                skulltag INT,
                domination INT,
                instagib INT,
                invasion INT,
                lastmanstanding INT,
                possession INT,
                survival INT,
                teamlms INT,
                terminator INT,
                teampossession INT,
                buckshot INT,
                fraglimit INT,
                timelimit INT,
                winlimit INT,
                pointlimit INT,
                duellimit INT,
                botskill INT,
                chat_sound INT,
                cl_allowmultipleannouncersounds INT,
                cl_alwaysplayfragsleft INT,
                cl_capfps INT,
                cl_dontrestorefrags INT,
                cl_drawcoopinfo INT,
                cl_hitscandecailhack INT,
                sv_weaponstay INT,
                sv_itemrespawn INT,
                sv_coop_losekeys INT,
                sv_coop_loseinventory INT,
                sv_coop_loseweapons INT,
                sv_coop_loseammo INT,
                sv_barrelrespawn INT,
                sv_weapondrop INT,
                sv_nojump INT,
                sv_nocrouch INT,
                sv_randomcoopstarts INT,
                sv_disallowbots INT,
                sv_defaultdmflags INT,
                sv_killallmonsters_percentage INT,
                sv_unblockplayers INT,
                sv_sharekeys INT,
                sv_website TEXT,
                sv_motd TEXT,
                sv_hostemail TEXT,
                sv_hostname TEXT,
                sv_maxplayers INT,
                sv_maxclients INT,
                sv_broadcast INT,
                sv_maprotation INT,
                sv_randommaprotation INT,
                sv_updatemaster INT,
                sv_masterip TEXT,
                sv_enforcemasterbanlist INT,
                logfile TEXT,
                sv_markchatlines INT,
                sv_logfilenametimestamp INT,
                sv_showlauncherqueries INT,
                sv_adminlistfile TEXT,
                sv_banexemptionfile TEXT,
                sv_banfile TEXT,
                sv_enforcebans INT,
                sv_rconpassword TEXT,
                sv_password TEXT,
                sv_joinpassword TEXT,
                sv_forcejoinpassword TEXT,
                sv_forcepassword INT,
                sv_nocallvote INT
                )'
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
    puts e.to_s # This should be in a log as well
  ensure
    query.close if query
    db.close if db
  end
end
