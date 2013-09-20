json.array!(@votes) do |vote|
  json.extract! vote, :candidate_id, :provided
  json.url vote_url(vote, format: :json)
end
