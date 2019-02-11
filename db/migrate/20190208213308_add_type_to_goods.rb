class AddTypeToGoods < ActiveRecord::Migration[5.1]
  def change
    add_column :goods, :type, :string
  end
end
