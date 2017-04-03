class CreateOrders < ActiveRecord::Migration
  def change
    create_table :order do |t|
      t.integer :total, :precision => 10, :scale => 2
    end
  end
end
