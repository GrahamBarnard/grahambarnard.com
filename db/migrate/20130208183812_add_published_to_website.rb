class AddPublishedToWebsite < ActiveRecord::Migration
  def change
    add_column :websites, :published, :boolean
  end
end
