class SessionsController < ApplicationController
    def new
    end
    def create
      user = User.where(email: params[:email], password_digest: params[:password]).first
      if user
        session[:user_id] = user.id
        redirect_to root_url, notice: 'Vous êtes connectés ! '
      else
        render :new
      end
    end
    def destroy
      session[:user_id] = nil
      redirect_to root_url, notice: 'Vous êtes déconnecter !'
    end
  end  