class AddReferencesToPlatforms < ActiveRecord::Migration[7.1]
  def change
    add_reference :platforms, :builder, null: false, foreign_key: true
  end
end
