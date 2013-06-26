class UsersController < ApplicationController

  def new
    @user = User.new(params[:user])
  end

  def create
    new_user = User.new(params[:user])
    if new_user.save
      session[:current_user_id] = new_user.id
      redirect_to :root
    else
      redirect_to :new
    end
  end


end
