require 'lita'

module Lita
  module Handlers
    class Fortune < Handler
      route(/fortune/, :fortune, command: true, help: {
        'fortune' => 'Returns your fortune.'
      })

      def self.default_config(handler_config)
      end

      def run_cmd(cmd)
        `#{cmd}`
      end

      def fortune(response)
        if File.exist?('/usr/bin/fortune')
          cmd = '/usr/bin/fortune'
        elsif File.exist?('/usr/local/bin/fortune')
          cmd = '/usr/local/bin/fortune'
        elsif File.exist?('/usr/games/fortune')
          cmd = '/usr/games/fortune'
        else
          cmd = 'fortune'
        end

        f = run_cmd(cmd)
        f = "No fortune for you!" if ! f || f.empty?
        response.reply f
      end
    end

    Lita.register_handler(Fortune)
  end
end
