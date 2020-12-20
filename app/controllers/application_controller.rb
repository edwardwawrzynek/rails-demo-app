class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :user

  def user
    if session[:user_id].nil?
      nil
    else
      User.find_by(id: session[:user_id])
    end
  end
end
