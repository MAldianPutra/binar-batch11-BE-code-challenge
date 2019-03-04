class Detail < ApplicationRecord
  belongs_to :order
  belongs_to :item

  after_save :update_item_quantity

  def update_item_quantity
    item.update_attributes(item_quantity: item.item_quantity - quantity)
  end 

end
