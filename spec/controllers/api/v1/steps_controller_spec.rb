# frozen_string_literal: true

require 'rails_helper'

RSpec.describe API::V1::StepsController, type: :controller do
  context 'POST /api/v1/steps' do
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

  context 'GET /api/v1/steps' do
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

  context 'GET /api/v1/steps/{id}' do
    it do
      get :show, params: {id: 1}, as: :json
      expect(response.status).to eq(200)
      expect(response.body).to eq(
        MultiJson.dump(
          "status": "ok",
          "description": "Взять деталь A"
        )
      )
    end
  end
end
