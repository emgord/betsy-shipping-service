class AddShippingInfoToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :shipping_cost, :integer
    add_column :orders, :shipping_type, :string
    add_column :orders, :delivery_estimate, :string
  end
end
