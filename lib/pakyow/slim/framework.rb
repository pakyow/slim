# frozen_string_literal: true

require "slim"

require "pakyow/framework"

module Pakyow
  module Slim
    class Framework < Pakyow::Framework(:slim)
      def boot
        app.processor :slim do |content|
          ::Slim::Template.new { @data = content }.render
        end
      end
    end
  end
end
