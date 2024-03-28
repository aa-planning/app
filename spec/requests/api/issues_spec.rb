require 'swagger_helper'

describe 'Issues API', vcr: true do
  path '/issues' do
    get 'Retrieves a list of issues' do
      tags 'Issues'
      consumes 'application/json'
      produces 'application/json'

      response '200', 'Get issues from linear' do
        run_test! do |response|
          response = JSON.parse(response.body)

          expect(response['data']).to be_present
          expect(response['data'].length).to be > 0
          expect(response['data'].first['id']).to be_present
        end
      end
    end
  end
end