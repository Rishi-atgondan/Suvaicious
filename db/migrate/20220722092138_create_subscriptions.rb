# frozen_string_literal: true

class CreateSubscriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :subscriptions do |t|
      t.string :name
      t.string :email
      t.bigint :mobile_number
      t.integer :no_of_persons
      t.string :location
      t.string :address
      t.string :menu_preference
      t.boolean :veg
      t.boolean :non_veg
      t.string :subscription_type
      t.integer :price_expectations

      t.timestamps
    end
  end
end
