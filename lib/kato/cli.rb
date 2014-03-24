require 'kato/cli/version'
require 'kato'

module Kato
  module Cli
    def Cli.post(user, message, room, options)
      room = Kato::Room.new(room)
      room.post(user, message, options)
    end
  end
end
