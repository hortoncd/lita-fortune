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
        f = `/usr/games/fortune`
        f = "No fortune for you!" unless f
        response.reply f
      end
    end

    Lita.register_handler(Fortune)
  end
end
