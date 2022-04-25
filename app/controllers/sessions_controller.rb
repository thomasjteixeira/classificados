class SessionsController < ApplicationController
    def new
        @user = User.new
    end

    def create
        user = User.find_by(email: params[:user][:email])
        if user && user.authenticate(params[:user][:password])
            reset_session
            session[:user_id] = user.id
            redirect_to root_path, notice:"Bem vindo #{user.name}!"
        else
            redirect_to new_session_path, alert: "E-mail ou senha inválidos"
        end
    end
end