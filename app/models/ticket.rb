class Ticket < ApplicationRecord
  belongs_to :member, required: false
  has_many :issues
end
