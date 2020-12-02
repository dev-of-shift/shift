class AddColumnPlaceId < ActiveRecord::Migration[5.2]
  def change
    add_column :workers, :place_id, :integer
  end

end
