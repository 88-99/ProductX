class CreatePurchaseDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :purchase_details do |t|
      t.bigint :quantity, null: false
      t.references :purchase, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
