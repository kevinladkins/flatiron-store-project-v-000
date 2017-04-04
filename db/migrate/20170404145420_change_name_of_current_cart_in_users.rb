class ChangeNameOfCurrentCartInUsers < ActiveRecord::Migration
  def change
    rename_column :users, :current_cart, :current_cart_id
  end
end
