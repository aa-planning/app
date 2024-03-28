class Api::IssuesController < ApplicationController
  before_action :load_issues

  def index
    render json: { data: @issues }
  end

  private

  def load_issues
    @issues = LinearLib.linear.issues
  end
end
