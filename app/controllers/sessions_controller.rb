class SessionsController < ApplicationController
 def new
 end

 def create
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      session[:current_user_id] = user.id
      redirect_to :root
    else
      render :new
    end
  end

  def destroy
    reset_session
    redirect_to :root
  end

end
