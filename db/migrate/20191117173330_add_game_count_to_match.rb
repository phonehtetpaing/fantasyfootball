class AddGameCountToMatch < ActiveRecord::Migration[5.2]
  def change
    add_column :matches, :games_count, :integer
  end
end
