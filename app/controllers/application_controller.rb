class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def requires_admin_access
    # current_user.admin?
    true
  end

  def login_required(redirect_path = new_user_session_path)
    redirect_to redirect_path unless user_signed_in?
  end
end
