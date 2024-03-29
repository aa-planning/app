# frozen_string_literal: true

module Api
  class MeController < Api::ApiController
    before_action :authenticate_user!

    def index
      render(json: UserSerializer.new(current_user).serializable_hash.to_json, status: :ok)
    end
  end
end
