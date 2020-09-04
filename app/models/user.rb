class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  has_many :belongs, dependent: :destroy
  has_many :teams, through: :belongs
  has_many :companies, through: :belongs

  validates :name, presence: true
  validates :tel, format: { with: VALID_TEL_REGEX }, allow_nil: true, allow_blank: true
end
