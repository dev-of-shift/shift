class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.integer :member_id
      t.string :name

      t.timestamps
    end
  end
end
