# frozen_string_literal: true

class RemoveColumn < ActiveRecord::Migration[6.1]
  def change
    remove_column :add_kitchens, :kitchen_images, :blob
    remove_column :add_kitchens, :food_images, :blob
  end
end
