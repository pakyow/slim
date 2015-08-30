GEM_NAME = 'pakyow-slim'

version = File.read(File.join(File.expand_path("../VERSION", __FILE__))).strip
presenter_path = File.exists?(GEM_NAME) ? GEM_NAME : '.'

Gem::Specification.new do |s|
  s.name        = 'pakyow-slim'
  s.version     = version
  s.licenses    = ['MIT']
  s.summary     = "Slim processor for Pakyow views."
  s.description = "A view processor that will convert files under view/ with the .slim extension into html."
  s.authors     = ["Dan McGuire"]
  s.email       = 'dan@metabahn.com'
  s.homepage    = 'http://slim-lang.com'
  s.files        = Dir[
                        File.join(presenter_path, 'README'),
                        File.join(presenter_path, 'MIT-LICENSE'),
                        File.join(presenter_path, 'VERSION'),
                        File.join(presenter_path, 'lib','*')
                      ]

  s.add_dependency('pakyow-core', '~> 0.9')
  s.add_dependency('pakyow-presenter', '~> 0.9')
  s.add_dependency('slim', '~> 3.0')

  s.add_development_dependency('rake', '~> 10.4')
  s.add_development_dependency('minitest', '~> 5.8')
end
