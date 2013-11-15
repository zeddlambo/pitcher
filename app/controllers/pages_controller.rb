class PagesController < ApplicationController
  def home
  end

  def about
  end

   def weekly_progress
    @advertisers = current_user.advertisers.by_week
  end

  def yesterday
  	@advertisers = current_user.advertisers.yesterday
  end

  def by_week
  	@advertisers = current_user.advertisers.by_week
  end

  def this_month
  	@advertisers = current_user.advertisers.by_month
  end

  def all
    @advertisers = current_user.advertisers
  end

end
