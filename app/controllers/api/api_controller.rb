# frozen_string_literal: true

module Api
  class ApiController < ActionController::Base # rubocop:disable Rails/ApplicationController
    respond_to :json
    protect_from_forgery unless: -> { request.format.json? }
    before_action :set_default_response_format

    private

    def set_default_response_format
      request.format = :json
    end
  end
end
