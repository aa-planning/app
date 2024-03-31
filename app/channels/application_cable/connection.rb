module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connect
      self.current_user = find_verified_user
    end

    protected

    def find_verified_user

      unless request.headers.key?('Authorization') && request.headers['Authorization'].split(' ').size > 1
        reject_unauthorized_connection
      end

      token = request.headers['Authorization'].split(' ').last
      decoded_token = JWT.decode(token, Rails.application.credentials.fetch(:secret_key_base), true, algorithm: 'HS256', verify_jti: true)[0]

      if decoded_token
        @current_user = User.find(decoded_token["sub"])
      else
        reject_unauthorized_connection
      end
    end
  end
end
