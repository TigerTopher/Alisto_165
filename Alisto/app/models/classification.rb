class Classification < ActiveRecord::Base
	belongs_to :syndicate
	has_many :anon_report
	
end
