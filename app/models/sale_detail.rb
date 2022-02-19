class SaleDetail < ApplicationRecord
  belongs_to :sale
  belongs_to :product
  validates :quantity,  presence: true
end