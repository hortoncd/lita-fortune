require 'lita'

module Lita
  module Handlers
    class Fortune < Handler
      route(/fortune/, :fortune, command: true, help: {
        'fortune' => 'Returns your fortune.'
      })

      def self.default_config(handler_config)
      end

      # path to the fortune binary
      config :path, type: String, required: false

      def fortune(response)
        if config.path
          f = `#{config.path}`
        else
          f = `fortune`
        end

        f = "No fortune for you!" unless f
        response.reply f
      end
    end

    Lita.register_handler(Fortune)
  end
end
