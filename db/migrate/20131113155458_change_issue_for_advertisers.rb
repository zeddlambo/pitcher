class ChangeIssueForAdvertisers < ActiveRecord::Migration
  def change
  	change_column :advertisers, :issue, :text
  end
end
