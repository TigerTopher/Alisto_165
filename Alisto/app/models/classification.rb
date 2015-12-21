class Classification < ActiveRecord::Base
	belongs_to :syndicate
	has_many :anon_report
	validates :crime_name,  presence: true, length: { maximum: 25 }
	validates :crime_details,  presence: true
end
