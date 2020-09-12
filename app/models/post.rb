class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length: { maximum: 140 }
  validates :content, presence: true
  validates :content_type, presence: true, inclusion: { in: %w(question memo) }

  scope :recent, -> { order(created_at: :desc) }
end
