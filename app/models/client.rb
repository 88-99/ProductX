class Client < ApplicationRecord
  has_many :teams_clients
  has_many :teams, through: :teams_clients
  has_many :sales, dependent: :destroy
  validates :name,  presence: true, length: { maximum: 50 }
  validates :phone_number, length: { maximum: 20 }
  validates :fax_number, length: { maximum: 20 }
  validates :address, length: { maximum: 40 }
  validates :remarks, length: { maximum: 400 }
end