class AlterSubscription < ActiveRecord::Migration[6.1]
  def change
    rename_column :subscriptions, :veg , :category 
    change_column :subscriptions, :category , :string
    remove_column :subscriptions, :non_veg
  end
end
