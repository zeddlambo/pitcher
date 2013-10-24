json.array!(@advertisers) do |advertiser|
  json.extract! advertiser, :name, :security, :cid, :issue, :points
  json.url advertiser_url(advertiser, format: :json)
end
