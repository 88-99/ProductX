class SaleDetail < ApplicationRecord
  belongs_to :sale, optional: true
  belongs_to :product
  validates :quantity,  presence: true
end