class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :team1_id
      t.integer :team2_id

      t.timestamps
    end
  end
end
