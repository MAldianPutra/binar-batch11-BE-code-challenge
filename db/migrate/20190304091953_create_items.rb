class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :item_name
      t.integer :item_price
      t.integer :item_quantity
    end
  end
end
