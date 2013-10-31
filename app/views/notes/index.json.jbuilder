json.array!(@notes) do |note|
  json.extract! note, :title, :note, :tag
  json.url note_url(note, format: :json)
end
