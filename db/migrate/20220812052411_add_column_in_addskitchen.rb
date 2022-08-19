# frozen_string_literal: true

class AddColumnInAddskitchen < ActiveRecord::Migration[6.1]
  def change
    add_column :add_kitchens, :kitchen_images, :binary
    add_column :add_kitchens, :food_images, :binary
  end
end
