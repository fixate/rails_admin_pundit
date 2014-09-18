module RailsAdmin
  module Pundit
    class Configuration
      attr_writer :default_policy_class

      def default_policy_class
        @default_policy_class || ::ApplicationPolicy
      end
    end
  end
end
