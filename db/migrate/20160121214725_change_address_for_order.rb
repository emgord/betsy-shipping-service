class ChangeAddressForOrder < ActiveRecord::Migration
    def change
      change_table :orders do |t|
        t.remove :zip
        t.string :zip
        t.string :country
      end
    end
end
