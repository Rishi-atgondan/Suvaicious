# frozen_string_literal: true

class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  skip_before_action :ensure_user_logged_in
  def register
    @user = User.new
  end

  def create
    user = User.new(register_params)
    if user.save
      session[:current_user_id] = user.id
      flash[:notice] = 'User Successfully Created!'
      redirect_to '/home'
    else
      flash[:alert] = "Password doesn't Match"
      render 'register'
    end
  end

  private

  def register_params
    params.require(:user).permit(:firstname, :lastname, :email, :password, :ph_number, :password_confirmation)
  end
end
