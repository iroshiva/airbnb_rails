class Reservation < ApplicationRecord
	belongs_to :guest_id, class_name: "User"
	belongs_to :listing

	validates :start_date, presence: true
  	validates :end_date, presence: true
end
