json.extract! match_result, :id, :winningteam_id, :game_id, :score, :losingteam, :created_at, :updated_at
json.url match_result_url(match_result, format: :json)
