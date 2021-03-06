class AuthenticationController < ApplicationController
    

    def login
        @user = User.find_by(username: params[:username])

        if @user 

            if @user.authenticate(params[:password])

                payload = { user_id: @user.id }

                secret = ENV['SECRET_KEY_BASE'] || Rails.application.secrets.secret_key_base

                token = JWT.encode(payload, secret)

                render json: { token: token }
            else
                render json: "incorrect username or password", status: :unauthorized
            end

        else
            render json: "incorrect username or password!", status: :unauthorized
        end
    end

end
