class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    added_attrs = [ :username, :image, :email, :password, :password_confirmation　]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
  end

  private

  def sign_in_required
    unless user_signed_in?
      redirect_to new_user_session_url, alert: 'ログインまたはアカウント登録してください'
    end
  end

  def after_sign_out_path_for(resource_or_scope)
    root_path
  end
end
