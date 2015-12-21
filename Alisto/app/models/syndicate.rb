class Syndicate < ActiveRecord::Base
	has_one :classification
	has_many :anon_report, through: :classification
end
