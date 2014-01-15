class HomeController < ApplicationController
  helper_method :current_user, :logged_in?

  def current_user
    user = nil
    if !!session[:user_id]
      begin
        user = User.find(session[:user_id])
      rescue ActiveRecord::RecordNotFound
        user = nil
      end
    end
    user
  end

  def logged_in?
    !!current_user
  end
end
