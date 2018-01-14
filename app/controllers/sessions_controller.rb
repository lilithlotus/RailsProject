require 'pry'
class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(email: params[:users][:email])
    return head(:forbidden) unless @user.authenticate(params[:users][:password])
    session[:user_id] = @user.id
    redirect_to user_path(@user)
  end

  def destroy
    session.destroy
    redirect_to root_path
  end

end
