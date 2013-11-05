class Advertiser < ActiveRecord::Base
	belongs_to :user

	def self.to_csv
  		CSV.generate do |csv|
			csv << column_names
			all.each do |advertiser|
				csv << advertiser.attributes.values_at(*column_names)
			end
		end
	end

	def average(points)
		x = 0
		y = 0
		advertisers.each do |advertiser|
			x = x + advertiser.points
			y += 1
		end
		@average = x/y
		puts @average
	end

	def yesterday
		@advertisers = current_user.advertisers.yesterday
	end

end
