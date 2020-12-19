class RemovePlacesIdFromWorkers < ActiveRecord::Migration[5.2]
  def change
    remove_column :workers, :places_id, :integer
  end
end
