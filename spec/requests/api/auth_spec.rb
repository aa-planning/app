# frozen_string_literal: true

require "swagger_helper"

describe "Issues API", vcr: true, auth: true do
  path "/auth/signup" do
    post "Create a new user" do
      tags "Authentication"
      consumes "application/json"
      produces "application/json"

      parameter name: :user, in: :body, schema: {
        type: :object,
        properties: {
          user: {
            type: :object,
            ref: "#/components/schemas/user",
          },
        },
      }

      response "200", "Create a valid user" do
        let(:user) do
          {
            "user": {
              email: Faker::Internet.email,
              password: SpecHelper.password,
            },
          }
        end

        run_test! do |response|
          response = JSON.parse(response.body)

          expect(response["data"]["id"]).to(be_present)
          expect(response["data"]["email"]).to(eq(user[:user][:email]))
        end
      end
    end
  end

  path "/auth/login" do
    post "Authenticate existent user" do
      tags "Authentication"
      consumes "application/json"
      produces "application/json"

      parameter name: :user, in: :body, schema: {
        type: :object,
        properties: {
          user: {
            type: :object,
            ref: "#/components/schemas/user",
          },
        },
      }

      response "200", "Login user created", dev: true do
        let!(:user_data) { FactoryBot.create(:user) }
        let(:user) do
          {
            "user": {
              "email": user_data.email,
              "password": SpecHelper.password,
            },
          }
        end

        run_test! do |response|
          authorization = response.headers["authorization"]
          response = JSON.parse(response.body)

          expect(response["data"]["id"]).to(be_present)
          expect(response["data"]["email"]).to(eq(user[:user][:email]))
          expect(authorization).to(be_present)
        end
      end
    end
  end
end
