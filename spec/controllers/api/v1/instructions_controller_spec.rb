# frozen_string_literal: true

require 'rails_helper'

RSpec.describe API::V1::InstructionsController, type: :controller do
  let!(:instruction) { Instruction.create!(name: 'Сборка X баннера') }

  context 'GET /api/v1/instructions' do
    it do
      get :index, params: {}, as: :json
      expect(response.status).to eq(200)
      expect(response.body).to eq(
        MultiJson.dump(
          "status": "ok",
          "instructions": [
            {
              "id": instruction.id,
              "name": instruction.name
            }
          ]
        )
      )
    end
  end

  context 'GET /api/v1/instructions/{id}' do
    let!(:step) { Step.create!(description: 'Взять деталь A', instruction: instruction) }
    let!(:detail) do
      Detail.create!(
        name: 'Пластиковый паук',
        short_name: 'A',
        link: 'http://teamcenter.indieteam.ru/1.zip'
      )
    end
    let!(:kit) { Kit.create!(instruction: instruction, detail: detail, quantity: 1) }

    it do
      get :show, params: {id: instruction.id}, as: :json
      expect(response.status).to eq(200)
      expect(response.body).to eq(
        MultiJson.dump(
          "status": "ok",
          "details": [
            {id: detail.id, count: kit.quantity, name: detail.name, shortName: detail.short_name}
          ],
          "steps": [
            {id: step.id, description: step.description}
          ]
        )
      )
    end
  end
end
