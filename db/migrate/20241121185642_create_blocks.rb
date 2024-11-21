class CreateBlocks < ActiveRecord::Migration[7.0]
  def change
    create_table :blocks do |t|
      t.string :reasons
      t.string :start_date
      t.string :end_date
      t.timestamps
    end
  end
end
