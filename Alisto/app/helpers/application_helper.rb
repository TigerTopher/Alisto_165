module ApplicationHelper
	def full_title(page_title='')
		base_title = "Alisto - Liwanag sa UP Diliman"
		if page_title.empty?
			"Alisto | Liwanag sa UP Diliman"
		else
			page_title + " | " + base_title
		end
	end
end
