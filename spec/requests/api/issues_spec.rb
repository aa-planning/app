require 'rails_helper'

RSpec.describe "Api::Issues", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/api/issues/index"
      expect(response).to have_http_status(:success)
    end
  end

end
