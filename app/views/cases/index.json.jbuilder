json.array!(@cases) do |case|
  json.extract! case, :name, :security, :cid, :issue, :points
  json.url case_url(case, format: :json)
end
