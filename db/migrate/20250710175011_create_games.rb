class CreateGames < ActiveRecord::Migration[7.1]
  def change
    create_table :games do |t|
      t.string :title
      t.string :type
      t.string :description
      t.date :exit_date
      t.float :price
      t.integer :min_player
      t.integer :max_player
      t.integer :min_age
      t.references :studio, null: false, foreign_key: true

      t.timestamps
    end
  end
end
