class SessionsController < ApplicationController
    def new
        @user = User.new
    end

    def create
        user = User.find_by(email: params[:user][:email])
        user.authenticate(params[:user][:password])
        reset_session
        session[:user_id] = user.id
        redirect_to root_path, notice:"Bem vindo #{user.name}!"

    end
end