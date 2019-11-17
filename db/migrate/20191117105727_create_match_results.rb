class CreateMatchResults < ActiveRecord::Migration[5.2]
  def change
    create_table :match_results do |t|
      t.integer :winningteam_id
      t.integer :game_id
      t.integer :score
      t.integer :losingteam

      t.timestamps
    end
  end
end
