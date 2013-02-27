class AddPublishedToEmployment < ActiveRecord::Migration
  def change
    add_column :employments, :published, :boolean
  end
end
