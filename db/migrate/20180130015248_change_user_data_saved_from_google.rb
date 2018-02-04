class ChangeUserDataSavedFromGoogle < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :name, :display_name
    add_column :users, :first_name, :string, after: 'uid'
    add_column :users, :last_name, :string, after: 'first_name'
    add_column :users, :email, :string, after: 'last_name'
    add_column :users, :image, :string, after: 'email'
  end
end
