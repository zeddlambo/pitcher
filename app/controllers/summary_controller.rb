class PagesController < ApplicationController
  def index
  	@advertisers = Advertiser.all
  end
 
end
