libdir = File.dirname(__FILE__)
$LOAD_PATH.unshift(libdir) unless $LOAD_PATH.include?(libdir)

require 'slim'

Pakyow::App.processor :slim do |content|
  temp = Tempfile.new('foo')
  temp.write(content)
  temp.rewind
  processed_content = Slim::Template.new(temp.path).render
  temp.close
  temp.unlink
  processed_content
end
