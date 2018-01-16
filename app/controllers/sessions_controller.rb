require 'pry'
class SessionsController < ApplicationController

  def new
  end

  def create

    if User.find_by(email: params[:session][:email])
      @user = User.find_by(email: params[:session][:email])
      return head(:forbidden) unless @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      redirect_to '/user/new'
    end

  end

  def facebook
    @user = User.find_or_create_by(email: auth['info']['email']) do |u|
      u.name = auth['info']['name']

    end

    @user.save

    session[:user_id] = @user.id

    redirect_to user_path(@user)

  end

  def destroy
    session.destroy
    redirect_to root_path
  end

  private

  def auth
    request.env['omniauth.auth']
  end

end
