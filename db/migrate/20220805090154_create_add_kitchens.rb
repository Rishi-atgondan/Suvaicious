class CreateAddKitchens < ActiveRecord::Migration[6.1]
  def change
    create_table :add_kitchens do |t|
      t.string :Kitchen_name
      t.string :kitchen_address
      t.string :latitude
      t.string :longitude
      t.string :nation
      t.string :state
      t.integer :pincode
      t.string :city
      t.bigint :kitchen_ph_no
      t.bigint :kitchen_owner_no
      t.string :kitchen_owner_name
      t.string :kitchen_owner_mailID
      t.string :establishment_type
      t.string :types_of_cuisines
      t.float :kitchen_open_time
      t.float :kitchen_close_time
      t.string :kitchen_open_days
      t.blob :kitchen_images
      t.blob :food_images

      t.timestamps
    end
  end
end
