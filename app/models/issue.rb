class Issue < ApplicationRecord
  belongs_to :ticket
  has_many :tasks 
end
