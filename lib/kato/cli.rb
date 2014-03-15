require 'kato/cli/version'
require 'kato'

module Kato
  module Cli
    def Cli.post(user, message, room, options)
      if options[:renderer] == :code
        options[:renderer] = :markdown
        message = "```\n#{message}\n```"
      end
      room = Kato::Room.new(room)
      room.post(user, message, options)
    end
  end
end
