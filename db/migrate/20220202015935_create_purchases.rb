class CreatePurchases < ActiveRecord::Migration[6.1]
  def change
    create_table :purchases do |t|
      t.date :date_at, null: false
      t.integer :inputter, null: false
      t.integer :total
      t.references :supplier, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :team, null: false, foreign_key: true

      t.timestamps
    end
  end
end