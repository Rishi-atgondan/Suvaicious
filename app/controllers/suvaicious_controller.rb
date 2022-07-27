class SuvaiciousController < ApplicationController
  skip_before_action :verify_authenticity_token
  def subscription
    @subp= Subscription.new
  end
  def sub_create
    subp = Subscription.new(subscription_params)
    if subp.save
      render plain: "Success"
    else 
      render plain: 'Failed to create account!'
    end
  end
  private
  def subscription_params
    params.require(:subscription).permit(:name, :email , :mobile_number , :no_of_persons , :location , :address , :menu_preference , :category , :subscription_type , :price_expectations)
    # params.require(:user).permit(:firstname, :lastname, :email, :password, :ph_number)
  
  end

end
