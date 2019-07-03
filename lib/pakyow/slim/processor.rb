# frozen_string_literal: true

require "slim"

require "pakyow/presenter/processor"

module Pakyow
  module Slim
    class Processor < Pakyow::Presenter::Processor
      extensions :slim

      def call(content)
        ::Slim::Template.new {
          @data = content
        }.render
      end
    end
  end
end
