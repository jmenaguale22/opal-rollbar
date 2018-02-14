require 'opal-rollbar/version'

if RUBY_ENGINE == 'opal'
  require 'opal-rollbar/rollbar'
  require 'opal-rollbar/rollbar/rollbar_wrapper.rb'

  if `Opal.global.Rollbar === undefined || Opal.global.Rollbar.version === undefined`
    raise 'No Rollbar available'
  end
else
  require 'opal'
  Opal.append_path File.expand_path('../', __FILE__).untaint
end
