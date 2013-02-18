class CreateSkilltypes < ActiveRecord::Migration
  def change
    create_table :skilltypes do |t|
      t.string :name

      t.timestamps
    end
  end
end
