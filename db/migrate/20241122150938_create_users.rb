class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.decimal :price_hour

      t.timestamps
    end
  end
end
