class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  has_many :belongs, dependent: :destroy
  has_many :teams, through: :belongs
  accepts_nested_attributes_for :teams

  validates :name, presence: true
  validates :tel, format: { with: VALID_TEL_REGEX }, allow_blank: true
end
