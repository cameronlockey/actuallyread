class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :pages
      t.integer :chapters
      t.boolean :use_chapters
      t.boolean :email_notifications
      t.string :bool
      t.datetime :deleted_at
      t.datetime :start_at
      t.datetime :finish_at

      t.timestamps
    end
  end
end
