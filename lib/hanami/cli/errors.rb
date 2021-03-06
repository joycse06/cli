module Hanami
  class CLI
    # @since 0.2.0
    class Error < StandardError
    end

    # @since 0.2.0
    class UnkwnownCommandError < Error
      # @since 0.2.0
      # @api private
      def initialize(command_name)
        super("unknown command: `#{command_name}'")
      end
    end

    # @since 0.2.0
    class InvalidCallbackError < Error
      # @since 0.2.0
      # @api private
      def initialize(callback)
        message = case callback
                  when Class
                    "expected `#{callback.inspect}' to respond to `#initialize' with arity 0"
                  else
                    "expected `#{callback.inspect}' to respond to `#call'"
                  end

        super(message)
      end
    end
  end
end
