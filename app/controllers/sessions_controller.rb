# frozen_string_literal: true

class SessionsController < ApplicationController
  skip_before_action :ensure_user_logged_in
  def login
    @user = User.new
    @input_list = User.all
  end

  def create
    user = User.find_by_email(params[:email])
    if user&.authenticate(params[:password])
      session[:current_user_id] = user.id
      flash.now[:notice] = 'Logged in successfully'
      redirect_to '/home'
    else
      flash[:alert] = 'Email or password is invalid'
      redirect_to '/login'
    end
  end

  def destroy
    session[:current_user_id] = nil
    @current_user = nil
    redirect_to '/home'
  end
end
