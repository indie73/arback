# frozen_string_literal: true

require 'rails_helper'

RSpec.describe API::V1::InstructionsController, type: :controller do
  context 'POST /api/v1/instructions' do
    it do
      post :create, params: {}, as: :json
      expect(response.status).to eq(200)
      expect(response.body).to eq(
        MultiJson.dump(
          "status": "ok"
        )
      )
    end
  end

  context 'GET /api/v1/instructions' do
    it do
      get :index, params: {}, as: :json
      expect(response.status).to eq(200)
      expect(response.body).to eq(
        MultiJson.dump(
          "status": "ok",
          "events": [1, 2, 3]
        )
      )
    end
  end

  context 'GET /api/v1/instructions/{id}' do
    it do
      get :show, params: {id: 1}, as: :json
      expect(response.status).to eq(200)
      expect(response.body).to eq(
        MultiJson.dump(
          "status": "ok",
          "details": [1, 2, 3, 4],
          "steps": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
        )
      )
    end
  end
end
