module API
  module V1
    class ControlPointsController < BaseController
      def index
        control_points = ControlPoint.all.map do |control_point|
          control_point.to_json
        end
        render status: :ok, json: {
          status: :ok,
          control_points: control_points
        }
      end
    end
  end
end
