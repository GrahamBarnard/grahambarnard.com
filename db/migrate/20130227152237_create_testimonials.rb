class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.string :author
      t.string :avatar
      t.boolean :published
      t.string :description

      t.timestamps
    end
  end
end
