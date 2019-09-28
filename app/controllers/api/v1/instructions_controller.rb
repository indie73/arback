module API
  module V1
    class InstructionsController < BaseController
      def create
        render status: :ok, json: {status: :ok}
      end

      def index
        render status: :ok, json: {status: :ok, events: [1, 2, 3]}
      end

      def show
        render status: :ok, json: {status: :ok, details: [1, 2, 3, 4], steps: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]}
      end
    end
  end
end
