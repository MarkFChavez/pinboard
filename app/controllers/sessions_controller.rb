class SessionsController < ApplicationController
  def create
    user = User.find_or_create_by_omniauth auth_params
    session["user.id"] = user.id

    redirect_to dashboard_path, notice: "Signed in successfully"
  end

  def destroy
    session["user.id"] = nil
    redirect_to root_path, notice: "Signed out successfully"
  end

  private

  def auth_params
    request.env["omniauth.auth"]
  end
end
