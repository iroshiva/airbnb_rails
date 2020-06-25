class Listing < ApplicationRecord

	belongs_to :city
	belongs_to :admin_id, class_name: "User"
	has_many :reservations, dependent: :destroy

	validates :available_beds,
		presence: true,
		numericality: { greater_than: 0 }

	validates :price,
		presence: true,
		numericality: { greater_than: 0 }

	validates :description,
		presence: true,
		length: { minimum: 140 }

	validates :welcome_message,
		presence: true
end
