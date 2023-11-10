require "rails_helper"

RSpec.describe Tool, type: :model do

  before{@tool = Tool.new}

  describe "Teste de preenchimento dos campos do model Tool" do

    it "name consegue ser preenchido?" do
      @tool.name = "multimetro"
      expect(@tool.name).to eq("multimetro")
    end

    it "description consegue ser preenchido?" do
      @tool.description = "ferramenta de medição"
      expect(@tool.description).to eq("ferramenta de medição")
    end

  end

end
