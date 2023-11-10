class Api::V1::ToolsController < ApplicationController

  #before_action :set_tool, only: %i [] # show update destroy

  def index
    @tools = Tool.all
    render json: @tools
  end

private

def set_tool
  @tool = Tool.find(params[:id])
end

def tool_params
  params.require(:tool).permit(:name, :description)
end

end