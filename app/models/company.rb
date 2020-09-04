class Company < ApplicationRecord
  has_many :belongs
  validates :name, presence: true
end
