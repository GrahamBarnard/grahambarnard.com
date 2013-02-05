class AddWebsiteIdToWebsiteImages < ActiveRecord::Migration
  def change
    add_column :website_images, :website_id, :integer
  end
end
