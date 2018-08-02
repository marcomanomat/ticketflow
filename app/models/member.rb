class Member < ApplicationRecord
	has_many :tickets, dependent: :destroy


  # attr_accessible :first_name, :last_name, :email, :password
  has_secure_password


  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
  validates :password, presence: true, length: { minimum: 6 }


end
