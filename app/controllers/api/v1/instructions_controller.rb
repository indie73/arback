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
        instruction = Instruction.find(params[:id])
        steps = instruction.steps.map do |step|
          {
            id: step.id,
            description: step.description
          }
        end
        details = instruction.kits.map do |kit|
          {
            id: kit.detail.id,
            count: kit.quantity,
            name: kit.detail.name,
            shortName: kit.detail.short_name
          }
        end
        render status: :ok, json: {
          status: :ok,
          details: details,
          steps: steps
        }
      end
    end
  end
end
