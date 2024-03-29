# frozen_string_literal: true

class KitchensController < ApplicationController
  skip_before_action :ensure_user_logged_in
  def add_kitchen; end

  def create
    @add_kitchen = AddKitchen.new(kitchen_params)
    if @add_kitchen.save
      redirect_to '/home'
    else
      render plain: false
    end
  end

  def list_kitchens
    @list_kitchens = AddKitchen.all
    render 'kitchens/list_kitchens'
  end

  private

  def kitchen_params
    params.require(:add_kitchen).permit(
      :Kitchen_name,
      :kitchen_address,
      :latitude,
      :longitude,
      :nation,
      :state,
      :pincode,
      :city,
      :establishment_type,
      :kitchen_ph_no,
      :kitchen_owner_no,
      :kitchen_owner_name,
      :kitchen_owner_mailID,
      :establishment_type,
      :types_of_cuisines,
      :kitchen_open_time,
      :kitchen_close_time,
      :kitchen_open_days,
      :kitchen_images,
      :kitchen_owner_image
    )
  end
end
