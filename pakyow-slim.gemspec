# frozen_string_literal: true

require File.expand_path("../lib/pakyow/slim/version", __FILE__)

Gem::Specification.new do |spec|
  spec.name        = "pakyow-slim"
  spec.version     = Pakyow::Slim::VERSION
  spec.summary     = "Pakyow Slim"
  spec.description = "Slim support for Pakyow Presenter"

  spec.authors  = ["Bryan Powell"]
  spec.email    = "bryan@metabahn.com"
  spec.homepage = "https://pakyow.org"

  spec.required_ruby_version = ">= 2.4.0"

  spec.license = "LGPL-3.0"

  spec.files        = Dir["CHANGELOG.md", "README.md", "LICENSE", "lib/**/*"]
  spec.require_path = "lib"

  spec.add_dependency "pakyow-core", "~> 1.0.alpha1"

  spec.add_dependency "slim", "~> 3.0"
end
