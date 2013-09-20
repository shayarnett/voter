json.array!(@candidates) do |candidate|
  json.extract! candidate, :name, :votes_count
  json.url candidate_url(candidate, format: :json)
end
