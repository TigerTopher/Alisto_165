class AnonReport < ActiveRecord::Base
	belongs_to :classification
	validates :title,  presence: true, length: { maximum: 25 }
	validates :short_desc,  presence: true
	validates :full_report,  presence: true
end
