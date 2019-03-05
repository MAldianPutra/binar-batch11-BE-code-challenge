class Transaction < ApplicationRecord
    belongs_to :item
    belongs_to :member

    after_save :update_item_quantity

    def update_item_quantity
        item.update_attributes(item_quantity: item.item_quantity - quantity)
    end

    def count_income
        @transactions.sum(:price)
    end 
end
