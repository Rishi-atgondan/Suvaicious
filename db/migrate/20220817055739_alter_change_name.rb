class AlterChangeName < ActiveRecord::Migration[6.1]
  def change
    rename_column :add_kitchens , :food_images, :kitchen_owner_image
  end
end
