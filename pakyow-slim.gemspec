require File.expand_path('../lib/version', __FILE__)

Gem::Specification.new do |spec|
  spec.name          = 'pakyow-slim'
  spec.summary       = 'Pakyow Slim'
  spec.description   = 'Slim support for Pakyow views'
  spec.author        = 'Dan McGuire'
  spec.email         = 'dan@metabahn.com'
  spec.homepage      = 'http://pakyow.org'
  spec.version       = Pakyow::Slim::VERSION
  spec.require_path  = 'lib'
  spec.files         = `git ls-files`.split("\n")
  spec.license       = 'MIT'

  spec.add_dependency('pakyow-support', '>= 0.11')
  spec.add_dependency('pakyow-core', '>= 0.11')
  spec.add_dependency('pakyow-presenter', '>= 0.11')

  spec.add_dependency('slim', '~> 3.0')

  spec.add_development_dependency('rake', '~> 11.2')
  spec.add_development_dependency('minitest', '~> 5.8')
end
