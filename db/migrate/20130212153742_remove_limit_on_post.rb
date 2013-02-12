class RemoveLimitOnPost < ActiveRecord::Migration
  def up
    change_column :blogs, :post, :text, :limit => nil
  end

  def down
    change_column :blogs, :post, :text, :limit => 255
  end
end
