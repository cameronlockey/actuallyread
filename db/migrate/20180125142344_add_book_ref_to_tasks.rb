class AddBookRefToTasks < ActiveRecord::Migration[5.0]
  def change
    add_reference :tasks, :book, foreign_key: true, after: 'id'
  end
end
