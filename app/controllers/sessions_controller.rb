class SessionsController < ApplicationController
  def new
    redirect_to signup_url unless User.exists?
  end

  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      log_in(user)
      flash[:notice] = "Successfully logged in."
      redirect_back_or root_url
    else
      flash.now[:alert] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to login_url, notice: 'Successfully logged out.'
  end
end
