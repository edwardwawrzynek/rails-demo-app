class SessionsController < ApplicationController
  def new
  
  end
  
  def create
    email = params[:session][:email]
    password = params[:session][:password]
    user = User.find_by(email: email)
    if user.nil?
      flash[:warning] = "Invalid Email or Password"
      redirect_to :session_new
    else
      user = user.authenticate(password)
      unless user
        flash[:warning] = "Invalid Email or Password"
        redirect_to :session_new
      else
        session[:user_id] = user.id
        flash[:info] = "Log In Successful"
        redirect_to '/'
      end
    end
  end

  def destroy
    reset_session
    flash[:info] = "Log Out Successful"
    redirect_to '/'
  end
end