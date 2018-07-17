class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :product_id
      t.float :total
    end
    add_index :orders, :user_id
    add_index :orders, :product_id
  end
  Order.create(user_id: 1, product_id: 1, total: 10.0)
  Order.create(user_id: 1, product_id: 2, total: 5.0)
end
