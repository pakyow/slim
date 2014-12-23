# Installation

Place inside your Gemfile

    gem 'pakyow-slim'

Inside app.rb

    require 'pakyow-slim'

Restart your app server and change your view extentions from .html to .slim

For more info on slim templating language visit [slim-lang.com](http://slim-lang.com/)

### Pakyow Specific shortcuts:

    .klass@@skope

translates to

    <div class='klass' data-scope='skope'></div>

    .klass@prop

translates to

    <div class='klass' data-prop='prop'></div>
