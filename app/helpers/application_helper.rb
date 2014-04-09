module ApplicationHelper
	def title
		 base_title = "Darren Sorrels"

		 @title.nil? ? base_title : "#{base_title} | #{@title}"
	end
end
