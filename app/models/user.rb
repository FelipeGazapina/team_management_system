class User < ApplicationRecord
  has_and_belongs_to_many :teams
  has_many :responsibles
end
