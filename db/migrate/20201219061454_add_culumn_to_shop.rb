class AddCulumnToShop < ActiveRecord::Migration[5.2]
  def change
    remove_column :shops, :member_id, :integer
  end
end
