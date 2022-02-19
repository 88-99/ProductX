class PurchaseDetail < ApplicationRecord
  belongs_to :purchase
  belongs_to :product
  validates :quantity,  presence: true
end