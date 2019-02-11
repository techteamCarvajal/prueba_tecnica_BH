class RemoveStringFromGoods < ActiveRecord::Migration[5.2]
  def change
    remove_column :goods, :string, :string
    remove_column :goods, :type, :string
  end
end
