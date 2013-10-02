# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'upgrade/version'

Gem::Specification.new do |spec|
  spec.name          = "upgrade"
  spec.version       = Upgrade::VERSION
  spec.authors       = ["Colin Curtin"]
  spec.email         = ["colin.curtin@verbasoftware.com"]
  spec.description   = %q{This gem only upgrades.}
  spec.summary       = %q{Upgrading is what this gem does.}
  spec.homepage      = "http://en.wikipedia.org/wiki/Honey_Is_Cool"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
