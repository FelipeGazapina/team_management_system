class CreateBlocks < ActiveRecord::Migration[7.0]
  def change
    create_table :blocks do |t|
      t.string :reason
      t.datetime :start_date
      t.datetime :end_date
      t.references :task, null: false, foreign_key: true

      t.timestamps
    end
  end
end
