class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.text :remember_token
      t.boolean :admin

      t.timestamps
    end
  end
end
