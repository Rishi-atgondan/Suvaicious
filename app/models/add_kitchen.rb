# frozen_string_literal: true

class AddKitchen < ApplicationRecord
  has_one_attached :kitchen_images
  has_one_attached :food_images

  mount_uploader :kitchen_images, ImageUploader
  mount_uploader :kitchen_owner_image, ImageUploader
end
