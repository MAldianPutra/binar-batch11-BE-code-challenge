class Item < ApplicationRecord
    has_many :details
    has_many :orders, through: :details
end
