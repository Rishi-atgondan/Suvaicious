# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.bigint :ph_number
      t.string :password_digest

      t.timestamps
    end
  end
end
