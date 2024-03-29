# frozen_string_literal: true

require "devise/jwt/test_helpers"

module SpecHelper
  class << self
    def password
      "aBc@@123##"
    end
  end

  class Authentication
    def initialize(user)
      @user = user
    end

    def access_token
      Devise::JWT::TestHelpers.auth_headers({}, @user).fetch("Authorization")
    end
  end
end
