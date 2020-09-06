class Team < ApplicationRecord
  has_many :belongs
  has_many :users, through: :belongs
  validates :name, presence: true
end
