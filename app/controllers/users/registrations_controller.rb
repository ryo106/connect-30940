class Users::RegistrationsController < Devise::RegistrationsController
  # before_action :authenticate_user!
  before_action :configure_account_update_params, only: [:update]

  protected

  def update_resource(resource, params)
    resource.update_without_password(params)
  end

  def after_update_path_for(_resource)
    root_path
  end

  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:nickname, :password_confirmation, :password, :first_name, :last_name, :first_name_kana, :last_name_kana, :image, :profile, :hobby, :birthday])
  end
end
