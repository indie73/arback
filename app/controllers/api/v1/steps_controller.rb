module API
  module V1
    class StepsController < BaseController
      def create
        render status: :ok, json: {status: :ok}
      end

      def index
        render status: :ok, json: {status: :ok, events: [1, 2, 3]}
      end

      def show
        render status: :ok, json: {status: :ok, username: "Иванов Иван Иванович", correctly: true, description: "Все ок"}
      end
    end
  end
end
