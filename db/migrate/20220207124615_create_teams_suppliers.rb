class CreateTeamsSuppliers < ActiveRecord::Migration[6.1]
  def change
    create_table :teams_suppliers do |t|
      t.references :team, null: false, foreign_key: true
      t.references :supplier, null: false, foreign_key: true

      t.timestamps
    end
  end
end
