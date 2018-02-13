require "opal/rollbar/version"

module Opal
  class Rollbar
    METHODS = %i[error warning info critical debug log]

    class RollbarWrapper
      include Native

      def initialize(native)
        @native = native
      end

      def to_n
        @native
      end
    end

    class << self

      def instance
        @instance ||= RollbarWrapper.new(`Rollbar`)
      end

      METHODS.each do |method|
        RollbarWrapper.alias_native method

        define_method(method) do |*args|
          instance.send(method, *args)
        end
      end
    end
  end
end
