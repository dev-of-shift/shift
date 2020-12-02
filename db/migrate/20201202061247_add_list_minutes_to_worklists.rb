class AddListMinutesToWorklists < ActiveRecord::Migration[5.2]
  def change
    add_column :worklists, :list_minutes, :integer
  end
end
