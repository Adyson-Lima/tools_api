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

  describe "GET /api/v1/tools/id" do
    it "Consegue retornar uma tool especifica e retornar status 200?" do
      get :show, params: {id: @tool.id}
      expect(response.body).to include_json(id: @tool.id)
      expect(response).to have_http_status(200)
    end
  end

end