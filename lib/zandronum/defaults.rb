# Module for sourceport configurations
module DoomConfig
  # Default server configuration for Zandronum sourceports
  class Zandronum
    # game options
    SKILL = 3
    COOPERATIVE = 1
    DEATHMATCH = 0
    SKULLTAG = 0
    DOMINATION = 0
    INSTAGIB = 0
    INVASION = 0
    LASTMANSTANDING = 0
    POSSESSION = 0
    SURVIVAL = 0
    TEAMLMS = 0
    TERMINATOR = 0
    TEAMPOSSESSION = 0
    BUCKSHOT = 0
    FRAGLIMIT = 0
    TIMELIMIT = 0
    WINLIMIT = 0
    POINTLIMIT = 0
    DUELLIMIT = 0
    BOTSKILL = 3

    # environment settings
    CHAT_SOUND = 2
    CL_ALLOWMULTIPLEANNOUNCERSOUNDS = 0
    CL_ALWAYSPLAYFRAGSLEFT = 1
    CL_CAPFPS = 0
    CL_DONTRESTOREFRAGS = 0
    CL_DRAWCOOPINFO = 1
    CL_HITSCANDECAILHACK = 1
    SV_WEAPONSTAY = true
    SV_ITEMRESPAWN = true
    SV_COOP_LOSEKEYS = false
    SV_COOP_LOSEINVENTORY = false
    SV_COOP_LOSEWEAPONS = false
    SV_COOP_LOSEAMMO = false
    SV_BARRELRESPAWN = true
    SV_WEAPONDROP = true
    SV_NOJUMP = false
    SV_NOCROUCH = false
    SV_RANDOMCOOPSTARTS = true
    SV_DISALLOWBOTS = false
    SV_DEFAULTDMFLAGS = false
    SV_KILLALLMONSTERS_PERCENTAGE = 95
    SV_UNBLOCKPLAYERS = true
    SV_SHAREKEYS = true

    # community
    SV_WEBSITE = ''.freeze
    SV_MOTD = ''.freeze
    SV_HOSTEMAIL = ''.freeze

    # host settings
    SV_HOSTNAME = ''.freeze
    SV_MAXPLAYERS = 12
    SV_MAXCLIENTS = 12
    SV_BROADCAST = 0
    SV_MAPROTATION = true
    SV_RANDOMMAPROTATION = false

    # master server settings
    SV_UPDATEMASTER = true
    SV_MASTERIP = 'master.zandronum.com:15300'.freeze
    SV_ENFORCEMASTERBANLIST = true

    # logging
    LOGFILE = ''.freeze
    SV_MARKCHATLINES = true
    SV_LOGFILENAMETIMESTAMP = true
    SV_SHOWLAUNCHERQUERIES = false

    # administration
    SV_ADMINLISTFILE = ''.freeze
    SV_BANEXEMPTIONFILE = ''.freeze
    SV_BANFILE = ''.freeze
    SV_ENFORCEBANS = true
    SV_RCONPASSWORD = ''.freeze
    SV_PASSWORD = ''.freeze
    SV_JOINPASSWORD = ''.freeze
    SV_FORCEJOINPASSWORD = false
    SV_FORCEPASSWORD = false
    SV_NOCALLVOTE = false

    # Default DOOM map setups
    DOOM_MAPS = %w[E1M1 E1M2 E1M3 E1M4 E1M5 E1M6 E1M7 E1M8 E1M9
                   E2M1 E2M2 E2M3 E2M4 E2M5 E2M6 E2M7 E2M8 E2M9
                   E3M1 E3M2 E3M3 E3M4 E3M5 E3M6 E3M7 E3M8 E3M9].freeze
    ULTIMATE_DOOM_MAPS = %w[E1M1 E1M2 E1M3 E1M4 E1M5 E1M6 E1M7 E1M8 E1M9
                            E2M1 E2M2 E2M3 E2M4 E2M5 E2M6 E2M7 E2M8 E2M9
                            E3M1 E3M2 E3M3 E3M4 E3M5 E3M6 E3M7 E3M8 E3M9
                            E4M1 E4M2 E4M3 E4M4 E4M5 E4M6 E4M7 E4M8 E4M9].freeze
    DOOM2_MAPS = %w[MAP01 MAP02 MAP03 MAP04 MAP05 MAP06 MAP07 MAP08 MAP09 MAP10
                    MAP11 MAP12 MAP13 MAP14 MAP15 MAP16 MAP17 MAP18 MAP19 MAP20
                    MAP21 MAP22 MAP23 MAP24 MAP25 MAP26 MAP27 MAP28 MAP29 MAP30
                    MAP31 MAP32].freeze
    FINAL_DOOM_PLUTONIA_MAPS = %w[MAP01 MAP02 MAP03 MAP04 MAP05 MAP06 MAP07 MAP08 MAP09 MAP10
                                  MAP11 MAP12 MAP13 MAP14 MAP15 MAP16 MAP17 MAP18 MAP19 MAP20
                                  MAP21 MAP22 MAP23 MAP24 MAP25 MAP26 MAP27 MAP28 MAP29 MAP30
                                  MAP31 MAP32].freeze
    FINAL_DOOM_TNT_MAPS = %w[MAP01 MAP02 MAP03 MAP04 MAP05 MAP06 MAP07 MAP08 MAP09 MAP10
                             MAP11 MAP12 MAP13 MAP14 MAP15 MAP16 MAP17 MAP18 MAP19 MAP20
                             MAP21 MAP22 MAP23 MAP24 MAP25 MAP26 MAP27 MAP28 MAP29 MAP30
                             MAP31 MAP32].freeze
    DOOM_STARTUP_MAP = DOOM_MAPS[0]
    ULTIMATE_DOOM_STARTUP_MAP = ULTIMATE_DOOM_MAPS[0]
    DOOM2_STARTUP_MAP = DOOM2_MAPS[0]
    FINAL_DOOM_PLUTONIA_STARTUP_MAP = FINAL_DOOM_PLUTONIA_MAPS[0]
    FINAL_DOOM_TNT_STARTUP_MAP = FINAL_DOOM_TNT_MAPS[0]
  end
end
