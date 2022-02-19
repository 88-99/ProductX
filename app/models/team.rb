class Team < ApplicationRecord
  has_many :products
  has_many :purchases
  has_many :teams_clients
  has_many :clients, through: :teams_clients
  has_many :teams_suppliers
  has_many :suppliers, through: :teams_suppliers
  belongs_to :user
  has_many :groupings, dependent: :destroy
  has_many :grouping_users,through: :groupings, source: :user
  validates :name,  presence: true, length: { maximum: 20 }
  validates :remarks, length: { maximum: 200 }
end