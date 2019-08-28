require "f1sales_custom/hooks/version"

module F1SalesCustom
  module Hooks
    class Error < StandardError; end
    class Lead
      def self.before_create(payload)
        payload
      end
    end
  end
end
