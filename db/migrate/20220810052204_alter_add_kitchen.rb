# frozen_string_literal: true

class AlterAddKitchen < ActiveRecord::Migration[6.1]
  def change
    change_column :add_kitchens, :kitchen_open_time, :string
    change_column :add_kitchens, :kitchen_close_time, :string
  end
end
