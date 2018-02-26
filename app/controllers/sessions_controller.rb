class SessionsController < ApplicationController

    def new

    end

    def create
      user = User.find_by(email:params[:session][:emali].downcase)
      if user && user.authenticate(params[:session][:password])
        session[:user-id] = user.id
        flash[:success] ="you have successfully looged in"
        redirect_to user_path(user)
      else
        flash.now[:danger] ="There is something wrong with your login information"
        render 'new'
      end
    end

    def destroy
      session[:user_id] = nil
      flash[:success] ="You have logged out"
      redirect_to root_path
    end

end