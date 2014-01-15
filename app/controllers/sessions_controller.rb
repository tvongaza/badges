class SessionsController < ApplicationController
  def create
    access_token = request.env['signet.google.persistence_obj'].signet["access_token"]
    session[:access_token] = access_token
    flash[:notice] = 'Signed In!'
    redirect_to root_url
  end

  def destroy
    session[:token] = nil
    flash[:notice] = 'Signed Out'
    redirect_to root_url
  end
end
