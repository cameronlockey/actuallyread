class RemoveUseChaptersFromBooks < ActiveRecord::Migration[5.1]
  def change
    change_table :books do |t|
      t.remove :use_chapters, :chapters
      t.rename :pages, :count
      t.string :units
      t.integer :chunk_size
    end
  end
end
