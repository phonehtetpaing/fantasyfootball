json.extract! game, :id, :winner_id, :match_id, :score, :loser_id, :created_at, :updated_at
json.url game_url(game, format: :json)
