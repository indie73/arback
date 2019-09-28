module API
  module V1
    class ControlPointsController < BaseController
      def index
        render status: :ok, json: {
          status: :ok,
          control_points: [
            {
              id: 1,
              username: "Проверка X баннера с эталонной моделью",
              time: 123123123
            }
          ]
        }
      end
    end
  end
end
