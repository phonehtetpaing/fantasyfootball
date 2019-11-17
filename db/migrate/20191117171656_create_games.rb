class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :winner_id
      t.integer :match_id
      t.integer :score
      t.integer :loser_id

      t.timestamps
    end
  end
end
