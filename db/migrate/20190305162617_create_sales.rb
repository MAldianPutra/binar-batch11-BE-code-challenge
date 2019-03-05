class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.references :member, foreign_key: true
      t.integer :total_sale
      t.timestamps
    end
  end
end
