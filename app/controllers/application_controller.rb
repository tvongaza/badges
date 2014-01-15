class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def requires_admin_access
    # current_user.admin?
    true
  end
end
