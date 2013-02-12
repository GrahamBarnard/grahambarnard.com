class RemoveViewsFromBlog < ActiveRecord::Migration
  def up
    remove_column :blogs, :views
  end

  def down
    add_column :blogs, :views, :string
  end
end
