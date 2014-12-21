class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    User.find_by id: session["user.id"]
  end
  helper_method :current_user

  def signed_in?
    true if session["user.id"] && session["user.id"].present?
  end
  helper_method :signed_in?

  private

  def authenticate_user!
    unless current_user
      redirect_to root_path, alert: "You need to sign in first."
    end
  end
end
