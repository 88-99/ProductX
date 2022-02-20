class Product < ApplicationRecord
  belongs_to :team
  belongs_to :user
  has_many :sale_details
  has_many :purchase_details
  validates :code, uniqueness: { scope: :team_id }, length: { maximum: 12 },
                   format: { with: /\A[a-zA-Z0-9ｱ-ﾝﾞﾟ]+\z/ }
  validates :name,  presence: true, length: { maximum: 30 }
  validates :cost_price,  presence: true
  validates :selling_price,  presence: true
  validates :remarks, length: { maximum: 800 }
end