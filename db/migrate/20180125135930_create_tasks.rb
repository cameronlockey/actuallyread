class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.boolean :all_day
      t.datetime :start_at
      t.datetime :end_at
      t.datetime :alert_at
      t.datetime :completed_at
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
