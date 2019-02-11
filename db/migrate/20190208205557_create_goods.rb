class CreateGoods < ActiveRecord::Migration[5.1]
  def change
    create_table :goods do |t|
      t.string :name
      t.string :description
      t.float :initial_value
      t.float :current_value
      t.date :purchase_date
      t.date :last_modification_date
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
