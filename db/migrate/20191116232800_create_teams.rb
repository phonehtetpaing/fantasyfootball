class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.integer :player_count
      t.integer :ranking
      t.string :name
      t.integer :score
      t.integer :total_matches
      t.integer :wins

      t.timestamps
    end
  end
end
