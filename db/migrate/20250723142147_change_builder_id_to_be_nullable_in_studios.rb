class ChangeBuilderIdToBeNullableInStudios < ActiveRecord::Migration[7.1]
  def change
    change_column_null :studios, :builder_id, true
  end
end
