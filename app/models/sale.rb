class Sale < ApplicationRecord
  belongs_to :client
  belongs_to :user
  has_many :sale_details, dependent: :destroy
  has_many :saled_products, through: :sale_details, source: :product
  accepts_nested_attributes_for :sale_details, allow_destroy: true
  validates :date_at,  presence: true
  validates :inputter,  presence: true
end