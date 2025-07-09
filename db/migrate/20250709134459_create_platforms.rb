class CreatePlatforms < ActiveRecord::Migration[7.1]
  def change
    create_table :platforms do |t|
      t.string :name_platform
      t.date :exit_date

      t.timestamps
    end
  end
end
