class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.integer :contract_price, default: 0
      t.timestamps
    end
  end
end
