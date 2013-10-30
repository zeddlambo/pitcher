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

	#def average
	#	for (i = 0, i+=1, i<advertisers.length)

end
