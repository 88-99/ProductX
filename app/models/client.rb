class Client < ApplicationRecord
  has_many :teams_clients
  has_many :teams, through: :teams_clients
  has_many :sales, dependent: :destroy
end
