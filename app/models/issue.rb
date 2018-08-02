class Issue < ApplicationRecord
  has_and_belongs_to_many :tickets
  has_many :tasks 
end
