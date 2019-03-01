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
        elsif
          cmd = '/usr/local/bin/fortune'
        elsif
          cmd = '/usr/games/fortune'
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
