class RemoveSituacionSentimentalFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :situacion_sentimental, :string
    remove_column :users, :tipo_documento, :string
    remove_column :users, :ciudad, :string
  end
end
