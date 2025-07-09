class CreateBuilders < ActiveRecord::Migration[7.1]
  def change
    create_table :builders do |t|
      t.string :name
      t.string :internet_site
      t.string :postal_address
      t.string :origin_country

      t.timestamps
    end
  end
end
