class AddUserRefToBooks < ActiveRecord::Migration[5.0]
  def change
    add_reference :books, :user, foreign_key: true, after: 'id'
  end
end
