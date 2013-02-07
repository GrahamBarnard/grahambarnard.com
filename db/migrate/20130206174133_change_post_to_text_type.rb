class ChangePostToTextType < ActiveRecord::Migration
  def up
    change_column :blogs, :post, :text
  end

  def down
    change_column :blogs, :post, :string
  end
end
