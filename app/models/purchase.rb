class Purchase < ApplicationRecord
  belongs_to :supplier
  belongs_to :user
  has_many :purchase_details, dependent: :destroy
  has_many :purchased_products, through: :purchase_details, source: :product
  accepts_nested_attributes_for :purchase_details,
                                 reject_if: :reject_purchase_details,
                                 allow_destroy: true
  validates :date_at,  presence: true
  validates :inputter,  presence: true

  def reject_purchase_details(attributes)
    exists = attributes[:product_id].present?
    empty = attributes[:quantity].blank?
    attributes.merge!(_destroy: 1) if exists && empty
    !exists && empty
  end
end