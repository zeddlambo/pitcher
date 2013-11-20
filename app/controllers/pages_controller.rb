class PagesController < ApplicationController
  def home
  end

  def about
  end

   def weekly_progress
    @advertisers = current_user.advertisers.by_week
    respond_to do |format|
      format.html
      format.csv { send_data @advertisers.to_csv }
    end
  end

  def yesterday
  	@advertisers = current_user.advertisers.yesterday
    respond_to do |format|
      format.html
      format.csv { send_data @advertisers.to_csv }
    end
  end

  def by_week
  	@advertisers = current_user.advertisers.by_week
    respond_to do |format|
      format.html
      format.csv { send_data @advertisers.to_csv }
    end
  end

  def this_month
  	@advertisers = current_user.advertisers.by_month
    respond_to do |format|
      format.html
      format.csv { send_data @advertisers.to_csv }
    end
  end

  def all
    @advertisers = current_user.advertisers
    respond_to do |format|
      format.html
      format.csv { send_data @advertisers.to_csv }
    end
  end

  def opps
    @advertisers = current_user.advertisers.where(points: 0)
  end

  def finished
    @advertisers = current_user.advertisers.where(finished: 'no')
  end

end
