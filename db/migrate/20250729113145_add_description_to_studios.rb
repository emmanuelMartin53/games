class AddDescriptionToStudios < ActiveRecord::Migration[7.1]
  def change
    add_column :studios, :description, :string
  end
end
