# -*- encoding: utf-8 -*-
# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "dassets-erb/version"

Gem::Specification.new do |gem|
  gem.name        = "dassets-erb"
  gem.version     = Dassets::Erb::VERSION
  gem.authors     = ["Kelly Redding", "Collin Redding"]
  gem.email       = ["kelly@kellyredding.com", "collin.redding@me.com"]
  gem.summary     = %q{Dassets engine to compile ERB.}
  gem.description = %q{Dassets engine fo compile ERB.}
  gem.homepage    = "http://github.com/redding/dassets-erb"
  gem.license     = "MIT"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.required_ruby_version = "~> 2.5"

  gem.add_development_dependency("assert", ["~> 2.19.0"])

  gem.add_dependency("dassets", ["~> 0.15.0"])
end
