# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kato/cli/version'

Gem::Specification.new do |spec|
  spec.name          = "kato-cli"
  spec.version       = Kato::Cli::VERSION
  spec.authors       = ["Tom McDonald"]
  spec.email         = ["tommcdo@gmail.com"]
  spec.summary       = %q{Kato.im CLI tool}
  spec.description   = %q{A simple command line tool for posting messages in kato.im chat rooms}
  spec.homepage      = "http://tommcdo.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"

  spec.add_dependency "kato-rb"
end
