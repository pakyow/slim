libdir = File.dirname(__FILE__)
$LOAD_PATH.unshift(libdir) unless $LOAD_PATH.include?(libdir)

require 'slim'


module SetSlimOptions
      Slim::Engine.set_options(
        shortcut:
          { '@@' => { tag: 'div', attr: 'data-scope' },
            '@' => { tag: 'div', attr: 'data-prop' },
            '#' => { tag: 'div', attr: 'id' },
            '.' => { tag: 'div', attr: 'class' }
          }
      )
end

Pakyow::App.processor :slim do |content|
  processed_content =
    Slim::Template.new { @data = content }.render
end
