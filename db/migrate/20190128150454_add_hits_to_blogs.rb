class AddHitsToBlogs < ActiveRecord::Migration[5.1]
  def change
    add_column :blogs, :hits, :integer
  end
end
