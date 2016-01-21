class AddAddressToMerchant < ActiveRecord::Migration
  def change
    add_column :merchants, :country, :string
    add_column :merchants, :state, :string
    add_column :merchants, :city, :string
    add_column :merchants, :zip, :string
    add_column :merchants, :address1, :string
    add_column :merchants, :address2, :string
  end
end
