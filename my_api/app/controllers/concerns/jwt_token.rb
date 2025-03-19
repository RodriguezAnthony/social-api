require "jwt"

module JwtToken

    extend ActiveSupport::Concern
    Secret_Key = Rails.application.secrets.secret_key_base. to_s

    def jwt_encode(payload, exp: 7.days.from_now)
        payload[:exp] = exp.to_i
        JWT.encode(payload, Secret_Key)
    end

    def jwt_decode(token)
        decoded = JWT.decode(token, Secret_Key)[0]
        HashWithIndifferentAccess.new decoded
    end

end