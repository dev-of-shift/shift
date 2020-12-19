class AddCulumnToWorklist < ActiveRecord::Migration[5.2]
  def change
    remove_column :worklists, :workday_id, :integer
  end
end
