class Api::V1::ToolsController < ApplicationController

  before_action :set_tool, only: %i[show update] # show update destroy

  def index
    @tools = Tool.all
    render json: @tools
  end

  def show
    render json: @tool
  end

  def create
    @tool = Tool.new(tool_params)
    if @tool.save
      render json: @tool, status: :created, location: api_v1_tool_url(@tool)
    else
      render json: @tool.erros, status: :unprocessable_entity
    end
  end

  def update
    if @tool.update(tool_params)
      render json: @tool
    else
      render json: @tool.erros, status: :unprocessable_entity
    end
  end

private

def set_tool
  @tool = Tool.find(params[:id])
end

def tool_params
  params.require(:tool).permit(:name, :description)
end

end