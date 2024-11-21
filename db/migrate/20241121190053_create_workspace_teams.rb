class CreateWorkspaceTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :workspace_teams do |t|
      t.references :workspace, foreign_key: true, null: false
      t.references :team, foreign_key: true, null: false
      t.timestamps
    end
  end
end
