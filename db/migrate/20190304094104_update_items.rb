class UpdateItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :item_name, :string
    add_column :items, :item_price, :integer
    add_column :items, :item_quantity, :integer
  end
end
