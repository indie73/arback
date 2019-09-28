module API
  module V1
    class InstructionsController < BaseController
      def index
        render status: :ok, json: {
          status: :ok,
          instructions: [
            {
              id: 1,
              name: "Сборка X баннера"
            }
          ]
        }
      end

      def show
        render status: :ok, json: {
          status: :ok,
          details: [
            {
              id: 1,
              count: 2,
              name: "Пластиковая палка с крючком",
              shortName: "D"
            },
            {
              id: 2,
              count: 2,
              name: "Железная палка с крючком",
              shortName: "D"
            }
          ],
          steps:
            [
              {
                id: 1,
                description: "Взять деталь A"
              },
              {
                id: 2,
                description: "Взять деталь B"
              }
            ]
        }
      end
    end
  end
end
