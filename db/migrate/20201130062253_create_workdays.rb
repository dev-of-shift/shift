class CreateWorkdays < ActiveRecord::Migration[5.2]
  def change
    create_table :workdays do |t|
      t.integer :member_id
      t.boolean :workday_flag, default: true, null: false

      t.timestamps
    end
  end
end
