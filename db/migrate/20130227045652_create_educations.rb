class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.date :start_date
      t.date :finish_date
      t.string :school
      t.text :description

      t.timestamps
    end
  end
end
