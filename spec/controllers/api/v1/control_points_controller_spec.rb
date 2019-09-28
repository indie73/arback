# frozen_string_literal: true

require 'rails_helper'

RSpec.describe API::V1::ControlPointsController, type: :controller do
  context 'GET /api/v1/control_points' do
    it do
      get :index, params: {}, as: :json
      expect(response.status).to eq(200)
      expect(response.body).to eq(
        MultiJson.dump(
          "status": "ok",
          "control_points": [
            {
              "id": 1,
              "username": "Проверка X баннера с эталонной моделью",
              "time": 123123123
            }
          ]
        )
      )
    end
  end
end
