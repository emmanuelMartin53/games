class RenameNameStudioToNameInStudios < ActiveRecord::Migration[7.1]
  def change
     rename_column :studios, :name_studio, :name
  end
end
