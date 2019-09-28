# frozen_string_literal: true

require 'rails_helper'

RSpec.describe API::V1::FilesController, type: :controller do
  context 'POST /api/v1/files' do
    it do
      post :create, params: {}, as: :json
      expect(response.status).to eq(200)
      expect(response.body).to eq(
        MultiJson.dump(
          "status": "ok",
          "id": 1
        )
      )
    end
  end

  context 'GET /api/v1/files' do
    it do
      get :index, params: {}, as: :json
      expect(response.status).to eq(200)
      expect(response.body).to eq(
        MultiJson.dump(
          "status": "ok",
          "files": [1, 2, 3]
        )
      )
    end
  end

  context 'GET /api/v1/files/{id}' do
    it do
      get :show, params: {id: 1}, as: :json
      expect(response.status).to eq(302)
      expect(response.body).to eq(
        "<html><body>You are being <a href=\"http://indieteam.online\">redirected</a>.</body></html>"
      )
    end
  end
end
