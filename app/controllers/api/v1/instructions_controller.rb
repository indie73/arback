module API
  module V1
    class InstructionsController < BaseController
      def index
        instructions = Instruction.all.map do |instruction|
          {
            id: instruction.id,
            name: instruction.name
          }
        end
        render status: :ok, json: {
          status: :ok,
          instructions: instructions
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
