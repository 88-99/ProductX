class Supplier < ApplicationRecord
  has_many :teams_suppliers
  has_many :teams, through: :teams_suppliers
  has_many :purchases, dependent: :destroy
end
