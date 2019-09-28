module API
  module V1
    class FilesController < BaseController
      def create
        render status: :ok, json: {status: :ok, id: 1}
      end

      def index
        render status: :ok, json: {status: :ok, files: [1, 2, 3]}
      end

      def show
        redirect_to 'http://indieteam.online'
      end
    end
  end
end
