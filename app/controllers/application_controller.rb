class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def requires_admin_acess
    current_user.admin?
  end
end
