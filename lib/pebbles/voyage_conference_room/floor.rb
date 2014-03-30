require 'yaml'

module Pebbles
  module VoyageConferenceRoom
    class Floor
      def initialize
        gem_spec   = Gem::Specification.find_by_name("pebbles-voyage_conference_room")
        rooms_spec = YAML.load_file("#{gem_spec.gem_dir}/config/rooms.yml")
        @floor_map = rooms_spec["floor_map"]
        @rooms     = rooms_spec["rooms"]
      end
      attr_reader :floor_map, :rooms

      def show_map(options)
        name = options["name"].to_s.downcase
        code = options["code"]

        selected_rooms = rooms.select! do |k, v|
          k == name || v["aliases"].include?(name) || v["code"] == code
        end

        map = floor_map
        if options["with_code"]
          selected_rooms.map{ |k,v| v["code"] }.each{ |code| map.gsub!(code, "/".color(:red)) }
        else
          selected_rooms.map{ |k,v| v["code"] }.each{ |code| map.gsub!(code, '/') }
          map.gsub!(/[a-z]/, ' ')
          map.gsub!("/", "/".color(:red))
        end
        map
      end
    end
  end
end
