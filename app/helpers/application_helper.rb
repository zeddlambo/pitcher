module ApplicationHelper
	def created_at_for_view advertiser
   		advertiser.created_at if advertiser.created_at.to_date == Date.today
	end
end
