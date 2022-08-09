class KitchensController < ApplicationController
  skip_before_action:ensure_user_logged_in
  def add_kitchen
  end
  def create
    kitchen = Kitchen.new(kitchen_params)
    if kitchen.save
      render plain: true
    else
      render plain: false    
    end
  end
  private
  def kitchen_params
    params.require(:kitchen).permit(
       :Kitchen_name , 
       :kitchen_address , 
       :latitude ,
       :longitude , 
       :nation ,
       :state ,
       :pincode ,
       :city , 
       :kitchen_ph_no ,
       :kitchen_owner_no ,
       :kitchen_owner_name ,
       :kitchen_owner_mailID ,
       :establishment_type ,
       :types_of_cuisines ,
       :kitchen_open_time ,
       :kitchen_close_time ,
       :kitchen_open_days ,
       :kitchen_images ,
       :food_images)
    
  end
end
