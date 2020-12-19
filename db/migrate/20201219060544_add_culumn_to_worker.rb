class AddCulumnToWorker < ActiveRecord::Migration[5.2]
  def change
    add_column :workers, :shop_id, :integer
    add_column :workers, :worklist_id, :integer
  end
end
