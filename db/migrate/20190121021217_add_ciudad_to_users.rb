class AddCiudadToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :ciudad, :string
  end
end
