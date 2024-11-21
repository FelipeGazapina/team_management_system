class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.references :team, index: true, foreign_key: true
      t.references :responsibles, array: true, index: true, foreign_key: true
      t.references :customers, index: true, foreign_key: true
      t.references :blocks, array: true, index: true, foreign_key: true, default: []
      t.string :title
      t.text :description
      t.integer :status, default: 0
      t.string :due_date
      t.timestamps
    end
  end
end
