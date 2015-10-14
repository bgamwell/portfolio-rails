class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # add before_filter :authorize at the top of the posts controller to prevent anyone else from adding posts

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user #define current_user as a helper method and make it available in other controllers

  def authorize
    redirect_to '/login' unless current_user
  end

end
