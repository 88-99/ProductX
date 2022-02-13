class Supplier < ApplicationRecord
  has_many :teams_suppliers
  has_many :teams, through: :teams_suppliers
  has_many :purchases, dependent: :destroy
  validates :name,  presence: true, length: { maximum: 20 }
  validates :phone_number, length: { maximum: 20 }
  validates :fax_number, length: { maximum: 20 }
  validates :address, length: { maximum: 40 }
  validates :remarks, length: { maximum: 400 }
end