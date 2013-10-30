json.array!(@advertisers) do |advertiser|
  json.extract! advertiser, :name, :security, :cid, :issue, :points, :calltime, :notes, :created_at, @updated_at
  json.url advertiser_url(advertiser, format: :json)
end
