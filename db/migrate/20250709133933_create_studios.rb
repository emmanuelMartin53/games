class CreateStudios < ActiveRecord::Migration[7.1]
  def change
    create_table :studios do |t|
      t.string :name_studio
      t.string :internet_site
      t.string :postal_address
      t.string :origin_country
      t.references :builder, null: false, foreign_key: true

      t.timestamps
    end
  end
end
