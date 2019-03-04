class Order < ApplicationRecord
  belongs_to :member
  has_many :details
  has_many :items, through: :details
end
