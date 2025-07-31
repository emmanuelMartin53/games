class CreatePlatformHasGames < ActiveRecord::Migration[7.1]
  def change
    create_table :platform_has_games do |t|
      t.references :platform, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
