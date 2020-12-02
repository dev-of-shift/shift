class AddColumnWorkerId < ActiveRecord::Migration[5.2]
  def change
    add_column :places, :worker_id, :integer
    remove_column :places, :member_id, :integer
  end

end
