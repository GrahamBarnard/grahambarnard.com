class AddPostDateAndFrontPageToBlog < ActiveRecord::Migration
  def change
    add_column :blogs, :posted_at, :datetime
    add_column :blogs, :featured, :boolean
  end
end
