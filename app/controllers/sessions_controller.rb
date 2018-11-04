class SessionsController < ApplicationController
  before_action :not_logged_in, only: %i(new create)

  def new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    user = User.find_by email: params[:session][:email].downcase
    if user
      log_in user
      params[:session][:remember_me] == Settings.remember_me_checked ? remember(user) : forget(user)
      redirect_to user
    else
      flash.now[:danger] = t ".invalid"
      redirect_to root_path
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_path
  end
end
