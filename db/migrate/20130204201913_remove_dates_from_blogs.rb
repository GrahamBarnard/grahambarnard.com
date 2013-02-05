class RemoveDatesFromBlogs < ActiveRecord::Migration
  def up
    remove_column :blogs, :dates
  end

  def down
    add_column :blogs, :dates, :string
  end
end
