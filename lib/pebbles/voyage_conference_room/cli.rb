require "thor"
require "rainbow/ext/string"
require "pebbles/voyage_conference_room"

module Pebbles
  module VoyageConferenceRoom
    class CLI < Thor
      desc "list", "list rooms"
      def list
        puts floor.rooms.keys.join("\n")
      end

      desc "map", "show floor map"
      method_option :with_code, :aliases => "-w", :desc => "show map with code", type: :boolean, default: false
      method_option :name,      :aliases => "-n", :desc => "find room by name"
      method_option :code,      :aliases => "-c", :desc => "find room by code"
      def map
        puts floor.show_map(options)
      end

      private
      def floor
        @floor ||= Floor.new
      end
    end
  end
end
