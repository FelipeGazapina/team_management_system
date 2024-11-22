class Task < ApplicationRecord
  belongs_to :team
  belongs_to :customer
  has_many :responsibles
  has_many :blocks
end
