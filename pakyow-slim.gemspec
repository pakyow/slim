# frozen_string_literal: true

require File.expand_path("../lib/pakyow/slim/version", __FILE__)

Gem::Specification.new do |spec|
  spec.name        = "pakyow-slim"
  spec.version     = Pakyow::Slim::VERSION
  spec.summary     = "Pakyow Slim"
  spec.description = "Slim support for Pakyow Presenter"

  spec.author   = "Bryan Powell"
  spec.email    = "bryan@bryanp.org"
  spec.homepage = "https://pakyow.com"

  spec.required_ruby_version = ">= 2.5.0"

  spec.license = "LGPL-3.0"

  spec.files        = Dir["CHANGELOG.md", "README.md", "LICENSE", "lib/**/*"]
  spec.require_path = "lib"

  spec.add_dependency "pakyow-presenter", "~> 1.0.0"

  spec.add_dependency "slim", "~> 4.0"
end
