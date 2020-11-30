class CreateWorklists < ActiveRecord::Migration[5.2]
  def change
    create_table :worklists do |t|
      t.integer :workday_id
      t.string :list_num
      t.string :list_day

      t.timestamps
    end
  end
end
