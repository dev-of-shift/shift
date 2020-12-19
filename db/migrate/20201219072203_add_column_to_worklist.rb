class AddColumnToWorklist < ActiveRecord::Migration[5.2]
  def change
    add_column :worklists, :end_hour, :integer
    add_column :worklists, :end_minutes, :integer
  end
end
