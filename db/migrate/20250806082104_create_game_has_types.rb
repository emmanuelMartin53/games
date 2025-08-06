class CreateGameHasTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :game_has_types do |t|
      t.references :game, null: false, foreign_key: true
      t.references :game_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
