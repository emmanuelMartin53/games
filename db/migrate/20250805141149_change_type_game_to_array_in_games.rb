class ChangeTypeGameToArrayInGames < ActiveRecord::Migration[7.1]
  def change
     change_column :games, :type_game, :string, array: true, default: [], using: "ARRAY[type_game]"
  end
end
