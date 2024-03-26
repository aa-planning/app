class Api::IssuesController < ApplicationController
  def index
    render json: { issues: [] }
  end
end
