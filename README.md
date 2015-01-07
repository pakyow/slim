# pakyow-slim

Slim templating plugin for [Pakyow](http://pakyow.com).

# Installation

Place inside your Gemfile

    gem 'pakyow-slim'

Inside app.rb

    require 'pakyow-slim'

Run `bundle install` and restart your app server. Now any `.slim` views will be compiled for you!

For more info on slim templating language visit [slim-lang.com](http://slim-lang.com/)

# Pakyow-Specific shortcuts:

`.klass@@skope`

translates to

    <div class='klass' data-scope='skope'></div>

and `.klass@prop`

translates to

    <div class='klass' data-prop='prop'></div>

# Status

[![Build Status](https://travis-ci.org/pakyow/pakyow-slim.png)](https://travis-ci.org/pakyow/pakyow-slim)

# License

pakyow-slim is released under the [MIT License](http://opensource.org/licenses/MIT).
