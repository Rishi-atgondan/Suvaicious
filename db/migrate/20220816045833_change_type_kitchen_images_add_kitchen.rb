class ChangeTypeKitchenImagesAddKitchen < ActiveRecord::Migration[6.1]
  def change
    change_column :add_kitchens, :kitchen_images, :string
    change_column :add_kitchens, :food_images, :string
    
  end
end
