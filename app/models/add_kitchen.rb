# frozen_string_literal: true

class AddKitchen < ApplicationRecord
  has_many_attached :kitchen_images
  has_many_attached :food_images
end
