class FixColumnToGames < ActiveRecord::Migration[7.1]
  def change
    rename_column :games, :type, :type_game
  end
end
