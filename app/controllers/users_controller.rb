class UsersController < ApplicationController
  def index
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:firstname, :lastname, :backup_email, :backup_phone])
  end
end