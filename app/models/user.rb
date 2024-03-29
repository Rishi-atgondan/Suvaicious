# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password

  validates :password, presence: true, confirmation: true
  validates :password_confirmation, presence: true
end
