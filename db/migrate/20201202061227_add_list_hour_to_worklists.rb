class AddListHourToWorklists < ActiveRecord::Migration[5.2]
  def change
    add_column :worklists, :list_hour, :integer
  end
end
