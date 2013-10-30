class Advertiser < ActiveRecord::Base
	has_one :notes
	belongs_to :user 
end
