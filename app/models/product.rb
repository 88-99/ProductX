class Product < ApplicationRecord
  belongs_to :team
  belongs_to :user
  has_many :sale_details
  has_many :purchase_details
  validates :code, uniqueness: { scope: :team_id },
                   format: { with: /\A[a-zA-Z0-9ｱ-ﾝﾞﾟ]+\z/ }
  validates :name,  presence: true
  validates :cost_price,  presence: true
  validates :selling_price,  presence: true
end