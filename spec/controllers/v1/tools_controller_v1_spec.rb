require "rails_helper"

RSpec.describe Api::V1::ToolsController, type: :controller do

  before { @tool = Tool.create(name: "osciloscopio", description: "ferramenta de teste")}

  describe "GET /api/v1/tools" do
    it "Consegue listar todas as tools e retornar status 200?" do
      get :index
      expect(JSON.parse(response.body).size).to eq(1)
      expect(response).to have_http_status(200)
    end
  end
end