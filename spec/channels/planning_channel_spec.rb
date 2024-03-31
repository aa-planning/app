require 'rails_helper'

describe ApplicationCable::Connection, type: :channel, planner: true do
  context 'when the user is authenticated' do
    let!(:user) { FactoryBot.create(:user) }
    
    it "subscribes to a planning room" do
      connect "/cable", headers: { :Authorization => SpecHelper::Authentication.new(user).access_token }
      
      # TODO: Make it works
      # subscribe room: "planning_room" # Check error
      # expect(subscription).to be_confirmed
      # Subscribers
      # expect(subscription).to have_broadcasted_to("planning_channel").with(subscribers: 1)
    end
  end
end
