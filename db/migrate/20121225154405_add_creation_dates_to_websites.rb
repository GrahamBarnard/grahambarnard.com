class AddCreationDatesToWebsites < ActiveRecord::Migration
  def change_table
    add_column(:websites, :created_at, :datetime)
    add_column(:websites, :updated_at, :datetime)
  end
end
