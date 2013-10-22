class AddContextToUqutoes < ActiveRecord::Migration
  def change
    add_column :uquotes, :context, :text
  end
end
