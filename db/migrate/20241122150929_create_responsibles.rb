class CreateResponsibles < ActiveRecord::Migration[7.0]
  def change
    create_table :responsibles do |t|
      t.references :user, null: false, foreign_key: true
      t.references :task, null: false, foreign_key: true
      t.decimal :base_charge
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
