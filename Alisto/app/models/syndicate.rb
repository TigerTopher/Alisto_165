class Syndicate < ActiveRecord::Base
	has_one :classification
	has_many :anon_report, through: :classification
	validates :name,  presence: true, length: { maximum: 50 }
	validates :overview,  presence: true
end
