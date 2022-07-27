class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  def register
    @user = User.new
  end
  def create
    user = User.new(register_params)
    if user.save
      session[:user_id] = user.id
      flash[:notice]= "User Successfully Created!"
      redirect_to root_path
    else
    render plain: 'Failed to create account!'
    end
  end
  private
  def register_params
    params.require(:user).permit(:firstname, :lastname, :email, :password, :ph_number)
  
  end
end
