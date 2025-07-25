class RenameNamePlatformTonNameInPlatforms < ActiveRecord::Migration[7.1]
  def change
    rename_column :platforms, :name_platform, :name
  end
end
