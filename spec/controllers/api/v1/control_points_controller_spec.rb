# frozen_string_literal: true

require 'rails_helper'

RSpec.describe API::V1::ControlPointsController, type: :controller do
  context 'GET /api/v1/control_points' do
    let!(:instruction) { Instruction.create!(name: 'Инструкция по сбору X баннера') }
    let!(:control_point) do
      ControlPoint.create!(
        username: 'Проверка X баннера с эталонной моделью',
        instruction: instruction
      )
    end

    it do
      get :index, params: {}, as: :json
      expect(response.status).to eq(200)
      expect(response.body).to eq(
        MultiJson.dump(
          "status": "ok",
          "control_points": [
            {
              "id": control_point.id,
              "username": control_point.username,
              "time": control_point.created_at.to_i,
              "instructionId": instruction.id
            }
          ]
        )
      )
    end
  end
end
