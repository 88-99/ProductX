class CreateTeamsClients < ActiveRecord::Migration[6.1]
  def change
    create_table :teams_clients do |t|
      t.references :team, null: false, foreign_key: true
      t.references :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
