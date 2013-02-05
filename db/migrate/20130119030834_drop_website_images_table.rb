class DropWebsiteImagesTable < ActiveRecord::Migration
  def up
    drop_table :website_images
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
