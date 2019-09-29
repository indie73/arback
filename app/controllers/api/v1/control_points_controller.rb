module API
  module V1
    class ControlPointsController < BaseController
      def show
        ControlPoint.create!(username: params['id'], instruction: Instruction.first)
        render status: :ok
      end

      def index
        control_points = ControlPoint.all.map do |control_point|
          control_point.to_json
        end
        render status: :ok, json: {
          status: :ok,
          control_points: control_points.reverse
        }
      end
    end
  end
end
