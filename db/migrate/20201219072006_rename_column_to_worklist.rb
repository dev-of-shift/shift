class RenameColumnToWorklist < ActiveRecord::Migration[5.2]
  def change
    rename_column :worklists, :list_hour, :start_hour
    rename_column :worklists, :list_minutes, :start_minutes
  end
end
