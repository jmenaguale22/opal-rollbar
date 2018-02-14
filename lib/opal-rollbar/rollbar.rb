require_relative 'rollbar/rollbar_wrapper'
module Rollbar
  METHODS = %i[error warning info critical debug log]

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
