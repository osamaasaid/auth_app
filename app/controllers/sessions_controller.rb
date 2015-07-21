class SessionsController < ApplicationController


  def index
  end


  def new
  end




  def create

    user = User.authenticate(params[:user][:email],
      params[:user][:password])

  end


  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end

end















