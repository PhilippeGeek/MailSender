class CreateSmtps < ActiveRecord::Migration
  def change
    create_table :smtps do |t|
      t.string :server
      t.string :username
      t.integer :port
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
