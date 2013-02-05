class FixColumnNameInWebimage < ActiveRecord::Migration
  def change
    rename_column :webimages, :order, :imageorder
  end
end
