class TeamsSupplier < ApplicationRecord
  belongs_to :team
  belongs_to :supplier
end