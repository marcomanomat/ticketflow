class Member < ApplicationRecord
	has_many :tickets, dependent: :destroy
end
