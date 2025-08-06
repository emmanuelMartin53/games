class RemoveTypeGameFromGames < ActiveRecord::Migration[7.1]
  def change
    remove_column :games, :type_game, :string
  end
end
