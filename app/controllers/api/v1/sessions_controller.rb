class Api::V1::SessionsController < ApplicationController

    def create
        user = User.find_by(email: sessions_params[:email])
        if user && user.valid_password?(sessions_params[:password])
            sign_in user, store: false
            user.generate_authentication_token!
            user.save
            render json: user, status: 200
        else
            render json: {errors: 'Senha ou e-mail invalido' }, status: 401
        end
    end

    private

    def sessions_params
       params.require(:session).permit(:email, :password) 
    end
end