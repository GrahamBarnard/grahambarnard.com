class AddImageUrlToWebsite < ActiveRecord::Migration
  def change
    add_column :websites, :imageurl, :string
  end
end
