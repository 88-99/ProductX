class Product < ApplicationRecord
  belongs_to :user
  has_many :sale_details
  has_many :purchase_details
  validates :code, uniqueness: true, length: { maximum: 12 },
                   format: { with: /\A[a-zA-Z0-9ｱ-ﾝﾞﾟ]+\z/ }
  validates :name,  presence: true, length: { maximum: 30 }
  validates :remarks, length: { maximum: 800 }
end
