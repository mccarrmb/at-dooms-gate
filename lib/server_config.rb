require 'zandronum/defaults'

# module for building, saving, and loading sourceport configurations
module ServerConfig
  # Zandronum configurations
  class Zandronum
    def initialize(id=nil)
      if id.nil?
        # use defaults as this is a brand new config
      else
        load_config(id)
      end
    end

    private

    def load_config(id)
      # Load the config from database
    end

    def dump_to_file(id)
      # Dump a config entry to text for server use
    end
  end
end
