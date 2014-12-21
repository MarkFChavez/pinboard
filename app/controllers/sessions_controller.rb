class SessionsController < ApplicationController
  def create
    binding.pry
    render xml: auth_params
  end

  private

  def auth_params
    request.env["omniauth.auth"]
  end
end
