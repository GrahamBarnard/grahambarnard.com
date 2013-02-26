class AddPreviewImageAndShortDescriptionToWebsites < ActiveRecord::Migration
  def change
    add_column :websites, :previewimageurl, :string
    add_column :websites, :shortdescription, :string
  end
end
