class CreateUquotes < ActiveRecord::Migration
  def change
    create_table :uquotes do |t|
      t.text :citat
      t.string :username

      t.timestamps
    end
  end
end
