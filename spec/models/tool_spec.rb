require "rails_helper"

RSpec.describe Tool, type: :model do

  before{@tool = Tool.new}

  describe "Teste de preenchimento dos campos do model Tool" do

    it "name consegue ser preenchido?" do
      @tool.name = "multimetro"
      expect(@tool.name).to eq("multimetro")
    end

  end

end
