# frozen_string_literal: true

require "swagger_helper"

describe "Issues API", vcr: true, user: true do
  path "/me" do
    get "Get logged user" do
      tags "User"
      consumes "application/json"
      produces "application/json"
      parameter name: "Authorization", in: :header, type: :string

      response "200", "Get logged user" do
        let!(:user) { FactoryBot.create(:user) }

        # API Params
        let(:Authorization) { SpecHelper::Authentication.new(user).access_token }

        run_test! do |response|
          response = JSON.parse(response.body)

          expect(response["email"]).to(eq(user.email))
        end
      end
    end
  end
end
