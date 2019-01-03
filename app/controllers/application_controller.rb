class ApplicationController < ActionController::Base


helper_method :current_user, :is_logged_in?
before_action :current_user,

#the above makes user available to views

  def current_user
    if session[:user_id].present?
      @current_user= User.find(session[:user_id])
    else
      @current_user= nil

    end
end


def is_logged_in?
  session[:user_id].present?
end

def force_login
  unless is_logged_in?
    flash[:error] = "You are not logged in"
    redirect_to new_user_path
  end
end


end
