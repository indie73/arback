module API
  module V1
    class DetailsController < BaseController
      def create
        render status: :ok, json: {status: :ok}
      end

      def index
        render status: :ok, json: {status: :ok, events: [1, 2, 3]}
      end

      def show
        render status: :ok, json: {status: :ok, count: 1, name: "Пластиковая палка с крючком", shortName: "D"}
      end
    end
  end
end
