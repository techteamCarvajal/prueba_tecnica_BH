class AddTypeGoodToGoods < ActiveRecord::Migration[5.2]
  def change
    add_column :goods, :type_good, :string
    add_column :goods, :string, :string
  end
end
