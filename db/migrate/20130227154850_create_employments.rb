class CreateEmployments < ActiveRecord::Migration
  def change
    create_table :employments do |t|
      t.date :start_date
      t.date :finish_date
      t.string :position
      t.text :description
      t.string :website

      t.timestamps
    end
  end
end
