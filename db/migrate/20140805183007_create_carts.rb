class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.integer :user_id
      t.decimal :total, :precision => 10, :scale => 2
    end
  end
end
