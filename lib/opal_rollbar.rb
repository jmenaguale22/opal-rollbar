require 'opal_rollbar/version'

if RUBY_ENGINE == 'opal'
  require 'opal_rollbar/rollbar'
  require 'opal_rollbar/rollbar/rollbar_wrapper.rb'

  if `Opal.global.Rollbar === undefined || Opal.global.Rollbar.version === undefined`
    raise 'No Rollbar available'
  end
else
  require 'opal'
  Opal.append_path File.expand_path('../', __FILE__).untaint
end
