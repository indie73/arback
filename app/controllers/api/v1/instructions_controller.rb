module API
  module V1
    class InstructionsController < BaseController
      def create
        instruction = Instruction.create!(name: params['name'])
        puts params['name']
        params['details'].map do |detail|
          puts detail
          Kit.create!(
            instruction: instruction,
            detail: Detail.create!(
              name: detail['count'],
              short_name: detail['shortName'],
              link: detail['link']
            ),
            quantity: detail['count']
          )
        end
        params['steps'].map do |step|
          Step.create!(description: step['description'], instruction: instruction)
        end
        render status: :ok
      end

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
          details: details.reverse,
          steps: steps.reverse
        }
      end
    end
  end
end
