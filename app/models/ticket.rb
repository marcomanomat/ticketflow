class Ticket < ApplicationRecord
  belongs_to :member, required: false
end
