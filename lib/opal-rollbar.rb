require_relative 'opal-rollbar/version'

if RUBY_ENGINE == 'opal'
  require_relative 'opal-rollbar/rollbar'
  require_relative 'opal-rollbar/rollbar/rollbar_wrapper.rb'

  if `Opal.global.Rollbar === undefined`
    raise 'No Rollbar available'
  end
else
  require 'opal'
  Opal.append_path File.expand_path('../', __FILE__).untaint
end
