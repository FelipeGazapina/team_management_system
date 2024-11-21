class CreateResponsibles < ActiveRecord::Migration[7.0]
  def change
    create_table :responsibles do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :base_charge
      t.string :start_date
      t.string :end_date
      t.timestamps
    end
  end
end
