class Team < ApplicationRecord
  has_many :belongs
  validates :name, presence: true
end
