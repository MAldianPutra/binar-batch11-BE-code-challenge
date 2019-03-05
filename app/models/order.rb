class Order < ApplicationRecord
  belongs_to :member
  has_many :details, dependent => :destroy
  accepts_nested_attributes_for :details
  has_many :items, through: :details
end
