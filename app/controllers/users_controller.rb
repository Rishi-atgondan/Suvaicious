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

  # # skip_before_action :ensure_user_logged_in
  # skip_before_action :verify_authenticity_token
  # def login
      
  # end

  # def check
  #     skip_before_action :verify_authenticity_token
  #     # skip_before_filter :verify_authenticity_token 
  #     # user_params = params.permit(:email, :password)
  #     users = User.find_by(email: login_params[:email])
  #     puts '---------------------------------------------njsndjn----------'
  #     puts (params[:password])
  #     if users && users.authenticate(register_params[:password])
  #       session[:current_user_id] = users.id
      
  #      flash.now[:alert] ="Logged in successfully"
  #     #  redirect_to 
  #     render plain: 'Success'
  #     else
  #     flash.now[:alert] = "Login is invalid!"
  #     # render 'new'
  #     # redirect_to '/login'
  #     render plain: false
  #     end
  #   end

  #   def destroy

  #     users[:users_id]=nil
  #     flash[:notice] ="You have been logged out!"
  #     redirect_to root_path
      
  #   end

  #   private
  #   def login_params
  #     params.require(:user).permit(:email, :password)
  #     # params.require(:todo).permit(:task,:date_task)
  #   end
end
