class SessionsController < ApplicationController
 def new
 end

 def create
    if user = User.authenticate(params[:username], params[:password])
      session[:current_user_id] = user.id
      redirect_to :root
    end
  end

  def destroy
    reset_session
    redirect_to :root
  end

end



.find_by_email(params[:email])
