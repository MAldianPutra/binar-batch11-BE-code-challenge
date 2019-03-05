class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.references :member, foreign_key: true
      t.references :item, foreign_key: true
      t.integer :price
      t.integer :quantity
      t.timestamps
    end
  end
end
