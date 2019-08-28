require "f1sales_custom/hooks/version"

module F1SalesCustom
  module Hooks
    class Error < StandardError; end
    class Lead
      def self.switch_source(lead)
        lead.source.name
      end
    end
  end
end
