class Belong < ApplicationRecord
  belongs_to :user
  belongs_to :team
  belongs_to :company
end
