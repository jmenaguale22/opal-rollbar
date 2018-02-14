
# lib = File.expand_path("../lib", __FILE__)
# $LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
$:.push File.expand_path('../lib/', __FILE__)
require "opal-rollbar/version"

Gem::Specification.new do |spec|
  spec.name          = "opal-rollbar"
  spec.version       = '1.0.1'
  spec.authors       = ["jmenaguale22"]
  spec.email         = ["jasonm@catprint.com"]

  spec.summary       = %q{Allows for Opal client-side Rollbar}
  spec.homepage      = "https://github.com/jmenaguale22/opal-rollbar"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
