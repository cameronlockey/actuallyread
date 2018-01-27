class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.datetime :last_login_at
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
