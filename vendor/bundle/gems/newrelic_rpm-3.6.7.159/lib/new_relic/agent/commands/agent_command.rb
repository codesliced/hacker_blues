# encoding: utf-8
# This file is distributed under New Relic's license terms.
# See https://github.com/newrelic/rpm/blob/master/LICENSE for complete details.

module NewRelic
  module Agent
    module Commands
      class AgentCommand
        attr_reader :id, :name, :arguments

        def initialize(collector_command)
          @id        = collector_command[0]
          @name      = collector_command[1]["name"]
          @arguments = collector_command[1]["arguments"]
        end
      end
    end
  end
end
