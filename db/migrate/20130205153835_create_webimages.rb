class CreateWebimages < ActiveRecord::Migration
  def change
    create_table :webimages do |t|
      t.string :url
      t.string :title
      t.text :caption
      t.integer :order
      t.integer :website_id

      t.timestamps
    end
  end
end
