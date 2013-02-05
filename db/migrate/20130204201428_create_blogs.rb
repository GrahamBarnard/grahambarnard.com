class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :post
      t.integer :views
      t.boolean :published
      t.string :dates

      t.timestamps
    end
  end
end
