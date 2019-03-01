require 'lita'

module Lita
  module Handlers
    class Fortune < Handler
      route(/fortune/, :fortune, command: true, help: {
        'fortune' => 'Returns your fortune.'
      })

      def self.default_config(handler_config)
      end


      def fortune(response)
        if File.exist?('/usr/bin/fortune')
          cmd = '/usr/bin/fortune'
        elsif File.exist?('/usr/local/bin/fortune')
          cmd = '/usr/local/bin/fortune'
        elsif File.exist?('/usr/games/fortune')
          cmd = '/usr/games/fortune'
        else
          cmd = nil
        end

        if cmd
          f = `#{cmd}`
          f = "No fortune for you!" unless f
        else
          f = "No fortune for you!" unless f
        end
        response.reply f
      end
    end

    Lita.register_handler(Fortune)
  end
end
