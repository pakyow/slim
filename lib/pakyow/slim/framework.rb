# frozen_string_literal: true

require "pakyow/framework"

require "pakyow/slim/processor"

module Pakyow
  module Slim
    class Framework < Pakyow::Framework(:slim)
      def boot
        object.state(:processor) << Pakyow::Slim::Processor
      end
    end
  end
end
