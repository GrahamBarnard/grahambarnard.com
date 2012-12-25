class ChangeUrToUrlFromWebsites < ActiveRecord::Migration
  def up
    rename_column :websites, :ur, :url
  end

  def down
    rename_column :websites, :url, :ur
  end
end