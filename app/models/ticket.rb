class Ticket < ApplicationRecord
  belongs_to :member, required: false
  has_and_belongs_to_many :issues

  def self.search(search)
  where("number LIKE ? OR status LIKE ?", "%#{search}%", "%#{search}%") 
	end
end
