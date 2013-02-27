class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :avatar, :string
    add_column :users, :fullname, :string
    add_column :users, :title, :string
    add_column :users, :website, :string
    add_column :users, :email, :string
    add_column :users, :phone, :string
    add_column :users, :welcome, :text
    add_column :users, :twitter, :string
    add_column :users, :github, :string
    add_column :users, :linkedin, :string
  end
end
